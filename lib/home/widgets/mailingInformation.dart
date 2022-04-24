import 'package:flutter/material.dart';

class MailingInformation extends StatelessWidget {
  const MailingInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 75,
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            margin: const EdgeInsets.all(10.0),
            child: Card(
              child: ListTile(
                title: Text("Codesinsider.com"),
              ),
              elevation: 8,
              shadowColor: Colors.green,
              margin: EdgeInsets.all(20),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
