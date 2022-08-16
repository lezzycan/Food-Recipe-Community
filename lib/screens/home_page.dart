// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants.dart';

import '../common widgets/home_container_contents.dart';
import '../common widgets/reusable_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Future<void> show(BuildContext context) async {
    await Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
      return HomePage();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildHomeContent(),
    );
  }

  Widget _buildHomeContent() {
    return SafeArea(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableContainer(
                margin: const EdgeInsets.fromLTRB(62, 15, 146, 20),
                child: const Text(
                  'Find best recipes \n for cooking',
                  style: kHomeText,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search recipes',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 17),
              height: 300,
              //   color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(3, 0, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          'Trending now 🔥',
                          style: kHomeText2,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Text('See all',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffE23E3E))),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xFFE23E3E),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ContainerContents(
                          width: 320,
                          image: AssetImage('images/image 4.png'),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        ContainerContents(
                          width: 274,
                          image: AssetImage('images/image 6.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'How to make skushi at home',
                        style: kHomeText.copyWith(fontSize: 16),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Text(
                          'How to make sandwich',
                          style: kHomeText.copyWith(fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
