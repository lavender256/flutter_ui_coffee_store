import 'package:flutter/material.dart';

import 'details_size_button.dart';

class DetailsInfo extends StatefulWidget {
  @override
  _DetailsInfoState createState() => _DetailsInfoState();
}

class _DetailsInfoState extends State<DetailsInfo> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth,
        height: screenHeight * .5,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenHeight * .025),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: TextStyle(
                    fontSize: screenWidth * .046, color: Color(0xffaeaeae)),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text:
                      'A cappucino is a coffee based drink made\nprimary from espresso and milk ',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: '...Read More',
                  style: TextStyle(color: Color(0xffb25e2b)),
                )
              ])),
              Text('Size',
                  style: TextStyle(
                      color: Color(0xffaeaeae), fontSize: screenWidth * .046)),
              Container(
                width: screenWidth,
                height: screenHeight*.071,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectIndex = index;
                            });
                          },
                          child: DetailsSizeButton(
                            size: index == 0
                                ? "S"
                                : index == 1
                                    ? "M"
                                    : "L",
                            isSelected: selectIndex == index ? true : false,
                          ));
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            color: Color(0xffaeaeae),
                            fontSize: screenWidth * .06),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Row(
                        children: [
                          Text('\$\t',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd17842))),
                          Text('4.20',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: screenHeight * .08,
                    width: screenHeight * .24,
                    decoration: BoxDecoration(
                        color: Color(0xffd17842),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
