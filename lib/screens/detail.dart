import 'dart:ui';
import 'package:cofee/model/coffee.dart';
import 'package:cofee/widgets/details_header.dart';
import 'package:cofee/widgets/details_info.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Coffee coffee;

  DetailPage({this.coffee});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenHeight * .025),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                DetailsHeader(
                    coffee: widget.coffee,
                ),
                SizedBox(height: screenHeight*.04,),
                DetailsInfo()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
