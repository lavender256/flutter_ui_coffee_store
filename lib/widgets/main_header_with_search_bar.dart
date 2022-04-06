import 'package:flutter/material.dart';

class MainHeaderWithSearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(
        'Find Your Best',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * .08,
            color: Colors.white),
      ),
      Text(
        'Coffee for you',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * .06,
            color: Colors.white),
      ),
      SizedBox(
        height: screenHeight * .04,
      ),
      TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: 'Find Your Coffee...',
            hintStyle: TextStyle(color: Color(0xff52555a)),
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xff52555a),
            ),
            fillColor: Color(0xff141921),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      )
    ]);
  }
}
