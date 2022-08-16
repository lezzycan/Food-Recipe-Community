import 'package:flutter/material.dart';

class ContainerContents extends StatelessWidget {
  const ContainerContents({ required this.width, required this.image,
    Key? key,
  }) : super(key: key);
final double width;
final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      //margin: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: image,
            fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15.0),
      ),
      //height: 200.0,
      //width: width,
      child: Column(
        children: [
          Row(
            
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 4.0),
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
                    Text('4.6',
                        style: TextStyle(
                            color: Colors.white))
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                   
                    borderRadius:
                        BorderRadius.circular(50.0),
                  ),
                 child:  Image.asset('images/Inactive.png', color: Colors.black12),),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
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
              const Opacity(opacity: 0.0, child: Text('Wake')),
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: const Color(0xAa303030),
                      borderRadius:
                          BorderRadius.circular(5)),
                  //  alignment: Alignment.centerRight,
                  child: const Text('0.15',
                      style: TextStyle(
                          color: Colors.white))),
            ],
          ),
         
        ],
      ),
    );
  }
}