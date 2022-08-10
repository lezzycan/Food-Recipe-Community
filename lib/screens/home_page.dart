// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Future<void> show(BuildContext context) async {
    await Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
      return const HomePage();
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(62, 20, 146, 20),
              child: const Text(
                'Find best recipes \n for cooking',
                style: TextStyle(
                    color: Color(0xff303030),
                    fontFamily: 'Poppins',
                    fontSize: 24.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
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
            const SizedBox(
              height: 12.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Trending now 🔥',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xff303030))),
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
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'images/image 4.png',
                          ),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    height: 200.0,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin:EdgeInsets.symmetric(horizontal: 12.0, vertical:4.0),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 3.0),
                                   decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(8),
                                   ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  Text('4.6', style: TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical:4.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(50.0),
                                ),
                                child: Icon(Icons.addchart))
                          ],
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 30),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color:Colors.grey,
                              borderRadius: BorderRadius.circular(50),
                              
                            ),
                            child: Icon(
                              Icons.play_arrow, color:Colors.white, size: 30,),
                          ),
                        ),
                      Row(
                        children: [
                          Text(''),
                          Spacer(),
                          Container(
                         //  padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xAa303030),
                            borderRadius: BorderRadius.circular(5)
                          ),
                        //  alignment: Alignment.centerRight,
                          child: Text('0.15', style:TextStyle(color: Colors.white) )),
                        ],
                      )
                        
                      ],

                    ),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
