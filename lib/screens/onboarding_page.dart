import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:food_recipe_app/constants.dart';

import '../common widgets/reusable_container.dart';


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
        Container(
          margin: const EdgeInsets.only(top: 57.0, left: 85.0, right: 85.0),
         height: 22,
          child: Row(
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
       const ReusesableContainer(text: 'Let\'s \n Cooking',
        margin:EdgeInsets.only(  bottom: 40) ,
       ),
      ],
    );
  }
}



