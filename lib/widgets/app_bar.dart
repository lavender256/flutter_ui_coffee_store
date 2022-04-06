import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: screenHeight * .08,
          width: screenHeight * .08,
          decoration: BoxDecoration(
              color: Color(0xff141921),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.grid_view,
            color: Color(0xff4d4f52),
            size: screenWidth * .06,
          ),
        ),
        Container(
          height: screenHeight * .07,
          width: screenHeight * .07,
          decoration: BoxDecoration(
              color: Color(0xff141921),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://i.postimg.cc/Y9cD4pB1/IMG-20210403-172119-957.jpg'))),
        )
      ],
    );
  }
}
