import 'package:cofee/data/data.dart';
import 'package:cofee/model/coffee.dart';
import 'package:cofee/widgets/build_single_item.dart';
import 'package:cofee/widgets/main_header_with_search_bar.dart';
import 'package:cofee/widgets/special_for_u_card.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TextStyle optionStyle=TextStyle(
      fontSize: 30,fontWeight: FontWeight.bold
  );
  int index = 1;
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
   var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: bnb(),
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: Container( padding: EdgeInsets.symmetric(
         horizontal: screenHeight * .03),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * .03,
                ),
               MyAppBar(),
                SizedBox(
                  height: screenHeight * .03,
                ),
               MainHeaderWithSearchBar(),
                SizedBox(
                  height: screenHeight * .05,
                ),
               Container(
                 width: screenWidth,
                 height: screenHeight*.35,
                 child: ListView.builder(
                   itemCount: coffeeList.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (BuildContext context,int index){
                       Coffee coffee=coffeeList[index];
                       return BuildSingleItem(coffee:coffee ,);
                 }),
               ),
                SizedBox(
                  height: screenHeight * .06,
                ),
                Text(
                    'Special for You',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * .045,
                        fontWeight: FontWeight.bold),
                  ),
                SizedBox(
                  height: screenHeight * .03,
                ),
               SpecialForYouCard()
              ],
            ),
          ),
        ),
      ),
      );
  }
  Widget bnb(){
    return BottomNavigationBar(
      elevation:0 ,
      backgroundColor: Color(0xff0c0f14),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shop_rounded,size: 30,),label: 'Business'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite,size: 30,),label: 'favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,size: 30,),label: 'notification')
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Color(0xff4e5053),
      selectedItemColor: Color(0xffd17842),
      onTap:(int index){
        setState(() {
          _selectedIndex=index;

        });
      },
    );
  }
  
}




