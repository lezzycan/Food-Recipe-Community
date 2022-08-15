import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:food_recipe_app/common%20widgets/reusable_container.dart';
import 'package:food_recipe_app/constants.dart';

import 'home_page.dart';


class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/background.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       ReusableContainer(
          margin: const EdgeInsets.only(top: 57.0, left: 85.0, right: 85.0),
          height: 22,
          child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.star,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
          AutoSizeText(
            '60k+',
            style: kAutoSizeText1,
          ),
          SizedBox(
            width: 4.0,
          ),
          AutoSizeText(
            'Premium recipe',
            style: kAutoSizeText2,
          )
        ],
      ),
        ),
        // const  SizedBox(height: 399,),
         ReusableContainer(
      margin:const EdgeInsets.only(  bottom: 60),
      child: Column(children: [
        const AutoSizeText(
             'Let\'s \n Cooking',
          textAlign: TextAlign.center,
          style: TextStyle(
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
    
      //  const ReusesableContainer(text: 'Let\'s \n Cooking',
      //   margin:EdgeInsets.only(  bottom: 60) ,
      //  ),
    )],
    
    );
  }
}





