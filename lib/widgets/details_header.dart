import 'package:cofee/model/coffee.dart';
import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  final Coffee coffee;

  DetailsHeader({this.coffee});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: screenHeight*.65,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(coffee.images)),
          borderRadius: BorderRadius.circular(30)),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenHeight * .025),
                  width: double.infinity,
                  height: screenHeight * .2,
                 decoration: BoxDecoration( color: Color(0xff311d18).withOpacity(.8),borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight: Radius.circular(30) )),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            coffee.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * .06,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: screenHeight * .003,
                          ),
                          Text(
                            coffee.subtitle,
                            style: TextStyle(
                                color: Color(0xffaeaeae),
                                fontSize: screenWidth * .035),
                          ),
                          SizedBox(
                            height: screenHeight * .003,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffd17842),
                              ),
                              Text(
                                coffee.rating,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      )),
                      Expanded(
                          child: Container(
                            width: screenWidth * .22,
                            height: screenHeight * .08,
                            decoration: BoxDecoration(
                                color: Color(0xff101419),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Medicum Roasted',
                                style: TextStyle(
                                    fontSize: screenWidth * .03,
                                    color: Color(0xffaeaeae),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))
                    ],
                  ))),
          Positioned(
            left: 0,right: 0,
              top: screenHeight * .02,
              child: Container(
                padding: EdgeInsets.only(
                    left: screenHeight * .025,
                    right: screenHeight * .025),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: screenHeight * .08,
                      width: screenHeight * .08,
                      decoration: BoxDecoration(
                          color: Color(0xff141921),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.arrow_back_ios,
                              size: screenWidth * .05,
                              color: Color(0xffaeaeae)),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * .08,
                      width: screenHeight * .08,
                      decoration: BoxDecoration(
                          color: Color(0xff141921),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.favorite,
                              size: screenWidth * .05,
                              color: Color(0xffaeaeae)),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
