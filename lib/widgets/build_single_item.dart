import 'package:cofee/model/coffee.dart';
import 'package:cofee/screens/detail.dart';
import 'package:flutter/material.dart';


class BuildSingleItem extends StatelessWidget {
  final Coffee coffee;

  BuildSingleItem({this.coffee});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(coffee:coffee);
          })),
      child: Container(
        width: screenWidth * .5,
        height: screenHeight * .4,
        margin: EdgeInsets.only(right:screenWidth * .04),
        padding: EdgeInsets.all(screenWidth * .02),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xff17191f), borderRadius: BorderRadius.circular(20)),
        child:
        Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: screenHeight*.2,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 1.0,
                            color: Color(0xff30221f))
                      ],
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(coffee.images)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 0,right: 0
                          ,child: Container(
                        height: screenWidth * .06,
                        width: screenWidth * .12,
                        decoration: BoxDecoration(
                            color: Color(0xff231715),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(15),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffd17842),
                              size: screenWidth * .035,
                            ),
                            Text(
                              '${coffee.rating}',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight*.12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffee.title,
                        style: TextStyle(fontSize: screenWidth*.05,
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
Spacer(),
                      Text(
                        coffee.subtitle,
                        style: TextStyle(
                            color: Color(0xffaeaeae),
                            fontSize: screenWidth * .03),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$\t${coffee.price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd17842)),
                          ),
                          Container(
                            width: screenHeight*.06,
                            height: screenHeight*.06,
                            decoration: BoxDecoration(
                                color: Color(0xffd17842),
                                borderRadius: BorderRadius.circular(7)),
                            child: Icon(
                              Icons.add,
                              size: screenWidth * .07,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

      ),
    );
  }
}