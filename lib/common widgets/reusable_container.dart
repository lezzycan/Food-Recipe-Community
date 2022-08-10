import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../screens/home_page.dart';


class ReusesableContainer extends StatelessWidget {
  const ReusesableContainer({required this.text,  required this.margin,
    Key? key, 
  }) : super(key: key);

final String text;
final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(children: [
         AutoSizeText(
             text,
          textAlign: TextAlign.center,
          style:const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 70.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontStyle: FontStyle.normal,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const AutoSizeText(
          'Find best recipe for cooking',
          style: TextStyle(
            color: Color(0xABffffff),
            fontSize: 22.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          height: 49.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 74.0, right: 73.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              // maximumSize: Size(206, 44),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              primary: Colors.deepOrange,
            ),
            onPressed: () => HomePage.show(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Start cooking',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        )
      ]),
    );
  }
}