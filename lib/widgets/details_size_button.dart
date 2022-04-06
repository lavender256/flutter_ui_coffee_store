import 'package:flutter/material.dart';

class DetailsSizeButton extends StatelessWidget {

  final String size;
  final bool isSelected;

  DetailsSizeButton({this.size, this.isSelected=false});

  @override
  Widget build(BuildContext context) { var screenHeight = MediaQuery.of(context).size.height;
  var screenWidth = MediaQuery.of(context).size.width;
    return   Container(
      height: screenHeight * .07,
      width: screenHeight * .11,
      margin: EdgeInsets.only(right: screenWidth*.06),
      decoration: BoxDecoration(
        color: !isSelected?Colors.black26:Color(0xff0c0f14),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: isSelected?Color(0xffb25e2b):Color(0xff141921),)),
      child: Center(
        child: Text(
          size,
          style: TextStyle(color:Color(0xffb25e2b)),
        ),
      ),
    );
  }
}
