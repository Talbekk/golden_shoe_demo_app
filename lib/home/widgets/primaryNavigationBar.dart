import 'package:flutter/material.dart';

const primaryColor = Color(0xFF8b0000);

class PrimaryNavigationBar extends StatefulWidget {
  const PrimaryNavigationBar({Key? key}) : super(key: key);

  @override
  _PrimaryNavigationBarState createState() => _PrimaryNavigationBarState();
}

class _PrimaryNavigationBarState extends State<PrimaryNavigationBar> {
  Widget searchField() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 500,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search...",
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.all(4.0), // add padding to adjust icon
                  child: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: const Text('Club Shoe'),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(width: 1.0, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('M'),
                Text('F'),
              ],
            ),
          ),
          searchField(),
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
