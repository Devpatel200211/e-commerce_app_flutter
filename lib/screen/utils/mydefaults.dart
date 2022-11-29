import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Myconfig {
  final double myWidth = 16.0;
  final double myHeight = 16.0;
  final double myExtraSmallFontSize = 10.0;
  final double mySmallFontSize = 12.0;
  final double myFontSize = 14.0;
  final double myMediumFontSize = 16.0;
  final double myLargeFontSize = 18.0;
  final double myExtraLargeFontSize = 20.0;
  final double myIconSize = 40.0;
  final Color myIconColor = Colors.red;
  final double myMargin = 20;
  final double myRadius = 10;
  final double myElevation = 1.0;
  final Color myButtonTextColor = Colors.white;
  final Color myButtonbackgroundColor = Colors.red;
  final Color myFontColor = Colors.black;
  final String myLoginScreenLogo = "assets/images/headerlogo.png";
  final String myRegisterScreenLogo = "assets/images/registericon.png";
  final String myVendorLogo = "";
  final Color icon = Color.fromARGB(255, 104, 65, 111);
  final Color fontcolor = Colors.blue;

  bool toast({required String msg}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        webPosition: "left",
        fontSize: 16.0);
    return true;
  }
}
