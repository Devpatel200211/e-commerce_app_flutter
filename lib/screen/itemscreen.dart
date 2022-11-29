import 'package:flutter/material.dart';
import 'package:project/screen/utils/mydefaults.dart';
//import 'package:floating_search_bar/floating_search_bar.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  Myconfig _myconfig = Myconfig();
  int que = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(color: Colors.black),
          title: Text(
            "Fruits",
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
                              color: _myconfig.icon,
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
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.elliptical(50, 45)),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 35),
                        ),
                        onTap: () {
                          setState(() {
                            if (que != 0) {
                              que--;
                            } else {
                              return;
                            }
                          });
                        },
                      ),
                      Text(
                        "$que",
                        style: TextStyle(fontSize: 20),
                      ),
                      InkWell(
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          setState(() {
                            que++;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
