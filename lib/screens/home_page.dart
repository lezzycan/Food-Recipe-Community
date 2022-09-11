// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe_app/constants.dart';
import 'package:food_recipe_app/model/food.dart';

import '../common widgets/constants.dart';
import '../common widgets/home_container_contents.dart';

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
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: _buildHomeContent(),
      ),
    );
  }

  Widget _buildHomeContent() {
    return SafeArea(
      bottom: false,
      child: ListView(
        primary: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  'Find best recipes \n for cooking',
                  style: kHomeText,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                padding: const EdgeInsets.all(12),
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
          SizedBox(
              height: 350,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12),
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 0),
                      height: 284,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: trendingNow.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(12, 0, 0, 10),
                                height: 254,
                                width: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        trendingNow[index].foodBackground),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 58,
                                          height: 38,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 12.0, vertical: 15.0),
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.fromLTRB(
                                              4, 8, 4, 8),
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            trendingNow[index].foodRating,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 12.0, vertical: 15.0),
                                          //    alignment: Alignment.center,
                                          child: Icon(Icons.add_alarm),
                                          decoration: BoxDecoration(
                                            color: Constants.kWhiteColor,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        )
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 30),
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: const Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Opacity(
                                            opacity: 0.0, child: Text('Wake')),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          padding: const EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                              color: const Color(0xAa303030),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          //  alignment: Alignment.centerRight,
                                          child: Text(
                                            trendingNow[index].foodDuration,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(12, 0, 0, 10),
                                child: Row(
                                  children: [
                                    Text(
                                      trendingNow[index].foodTitle,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
