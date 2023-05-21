import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatefulWidget{
  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  int _selectedIndex = 0 ;

  _onTap(index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child:Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal: 20.0),
          child:  GNav(
          gap: 8,
          tabBackgroundColor: Colors.grey.shade900,
          activeColor: Colors.white,
          color: Colors.grey,
          backgroundColor: Colors.black54,
          tabs: [
          GButton(icon: Icons.home  , text: "home") ,
          GButton(icon: Icons.favorite_border , text : "favorite" ) ,
          GButton(icon: Icons.search , text: "search"),
          GButton(icon: Icons.person , text:"profile")
          ],
          selectedIndex: _selectedIndex,
          onTabChange: _onTap

          ),
          ),
      ),
    );
  }

}



  
      
