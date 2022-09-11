import "package:flutter/material.dart";

class ContainerContent extends StatelessWidget {
  const ContainerContent({Key? key, this.image, this.width}) : super(key: key);

  final String? image;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 12.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              image!,
            ),
            fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: 200.0,
      width: width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3.0),
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
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Icon(Icons.addchart))
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(opacity: 0.0, child: Text('Wake')),
              Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color(0xAa303030),
                      borderRadius: BorderRadius.circular(5)),
                  //  alignment: Alignment.centerRight,
                  child: Text('0.15', style: TextStyle(color: Colors.white))),
            ],
          )
        ],
      ),
    );
  }
}
