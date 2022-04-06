import 'package:flutter/material.dart';

class BuildCoffeeCategory extends StatelessWidget {
  final String categoryName;
  final bool isSelected;

  BuildCoffeeCategory({this.categoryName, this.isSelected});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * .025),
      child: Column(
        children: [
          Text(
            categoryName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Color(0xffd17842) : Color(0xff52555a),
            ),
          ),
          isSelected
              ? Text(
            'O',
            style: TextStyle(
                color: Color(0xffd17842), fontWeight: FontWeight.bold),
          )
              : Text('')
        ],
      ),
    );
  }
}