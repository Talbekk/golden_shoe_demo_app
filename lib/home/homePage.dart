import 'package:flutter/material.dart';

const bottomContainerHeight = 40.0;
const bottomContainerColor = Color(0xFFEB1555);
const reusableCardColor = Color(0xFF1D1E33);
const primaryColor = Color(0xFF8b0000);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: const Text('Club Shoe'),
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
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              colour: reusableCardColor,
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: reusableCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: reusableCardColor,
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
    );
  }
}
