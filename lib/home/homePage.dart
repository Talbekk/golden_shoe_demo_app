import 'package:flutter/material.dart';
import 'package:golden_shoe_demo_app/home/widgets/mailingInformation.dart';
import 'package:golden_shoe_demo_app/home/widgets/secondaryNavigationBar.dart';
import 'widgets/primaryNavigationBar.dart';
import 'widgets/heroImage.dart';

const bottomContainerHeight = 50.0;
const bottomContainerColor = Color(0xFFEB1555);
const reusableCardColor = Color(0xFF1D1E33);
const primaryColor = Color(0xFF8b0000);
const footerColor = Color(0xFF333333);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const PrimaryNavigationBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SecondaryNavigationBar(),
            const HeroImage(),
            const MailingInformation(),

            // Row(
            //   mainAxisSize: MainAxisSize.max,
            //   children: <Widget>[
            //     Expanded(
            //       child: ReusableCard(
            //         colour: reusableCardColor,
            //       ),
            //     ),
            //     Expanded(
            //       child: ReusableCard(
            //         colour: reusableCardColor,
            //       ),
            //     ),
            //     Expanded(
            //       child: ReusableCard(
            //         colour: reusableCardColor,
            //       ),
            //     ),
            //   ],
            // ),
            // Expanded(
            //   child: Row(
            //     children: <Widget>[
            //       Expanded(
            //         child: ReusableCard(
            //           colour: reusableCardColor,
            //         ),
            //       ),
            //       Expanded(
            //         child: ReusableCard(
            //           colour: reusableCardColor,
            //         ),
            //       ),
            //       Expanded(
            //         child: ReusableCard(
            //           colour: reusableCardColor,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(
            //   child: ReusableCard(
            //     colour: reusableCardColor,
            //   ),
            // ),
            Container(
              color: footerColor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
