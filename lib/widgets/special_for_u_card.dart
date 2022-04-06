import 'package:flutter/material.dart';

class SpecialForYouCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: EdgeInsets.all(
            screenWidth * .03,
          ),
          height: screenHeight * .25 - 20,
          decoration: BoxDecoration(
              color: Color(0xff171b22),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: Color(0xff30221f))
                        ],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://i.postimg.cc/cHfr42W5/espresso.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  )),
              SizedBox(width: screenWidth * .04),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '5 Coffee Beans for you\n Must try!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * .04),
                      ),
                      Text(
                        'With Oat Milk',
                        style: TextStyle(color: Color(0xffaeaeae)),
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$\t',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffd17842))),
                              Text('4.20',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ],
                          ),
                          Container(
                            height: screenHeight * .055,
                            width: screenHeight * .055,
                            decoration: BoxDecoration(
                              color: Color(0xffd17842),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    size: screenWidth * .06,
                                    color: Colors.white,
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: screenWidth * .038),
          height: screenWidth * .07,
          width: screenWidth * .14,
          decoration: BoxDecoration(
              color: Color(0xff231715),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
                size: screenWidth * .035,
                color: Color(0xffd17842),
              ),
              Text(
                '4.5',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}
