import 'package:flutter/material.dart';
import 'package:project/screen/utils/mydefaults.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  Myconfig _myconfig = Myconfig();
  String filterLable = "Popularity";
  int que = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(color: Colors.black),
          title: Text(
            "WishList",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.all(Radius.elliptical(50, 45)),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Popularity",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: ImageIcon(AssetImage(
                        "assets/images/filter.png",
                      )),
                    )
                  ],
                ),
              ),
            ),

            //first part
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/watermelo.jpg")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WaterMelon",
                          style: TextStyle(
                              fontSize: _myconfig.myLargeFontSize,
                              color: _myconfig.fontcolor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Watermelon",
                            style: TextStyle(
                                fontSize: _myconfig.myExtraSmallFontSize)),
                        Text("Rs 25.00",
                            style: TextStyle(
                                fontSize: _myconfig.myFontSize,
                                fontWeight: FontWeight.bold)),
                        Text("Rs 50.00 Save Rs 25.00",
                            style: TextStyle(
                                fontSize: _myconfig.mySmallFontSize,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //second part
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/cabbage.jpg")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cabbage",
                          style: TextStyle(
                              fontSize: _myconfig.myLargeFontSize,
                              color: _myconfig.fontcolor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Fresh cabbage",
                            style: TextStyle(
                                fontSize: _myconfig.myExtraSmallFontSize)),
                        Text("Rs 15.00",
                            style: TextStyle(
                                fontSize: _myconfig.myFontSize,
                                fontWeight: FontWeight.bold)),
                        Text("Rs 20.00 Save Rs 5.00",
                            style: TextStyle(
                                fontSize: _myconfig.mySmallFontSize,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //third part
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/images/banana.jpg")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "banana",
                          style: TextStyle(
                              fontSize: _myconfig.myLargeFontSize,
                              color: _myconfig.fontcolor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Fresh Banana",
                            style: TextStyle(
                                fontSize: _myconfig.myExtraSmallFontSize)),
                        Text("Rs 28.00  [6 Nos]",
                            style: TextStyle(
                                fontSize: _myconfig.myFontSize,
                                fontWeight: FontWeight.bold)),
                        Text("Rs 30.00 Save Rs 2.00",
                            style: TextStyle(
                                fontSize: _myconfig.mySmallFontSize,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
