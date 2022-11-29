import 'package:flutter/material.dart';
import 'package:project/screen/utils/mydefaults.dart';
import 'package:project/screen/utils/mywidgets.dart';

class VegetablesScreen extends StatefulWidget {
  const VegetablesScreen({Key? key}) : super(key: key);

  @override
  State<VegetablesScreen> createState() => _VegetablesScreenState();
}

class _VegetablesScreenState extends State<VegetablesScreen> {
  Myconfig _myconfig = Myconfig();
  int que = 0;
  int que2 = 0;
  double pricewatermelon = 0;
  double pricestrawberry = 0;
  double totalwatermelon = 0;
  double totalstrawberry = 0;
  double total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(color: Colors.black),
          title: Text(
            "Vegetables",
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
                      child: Image.asset("assets/images/broccoli.jpg")),
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
                          "Broccoli",
                          style: TextStyle(
                              fontSize: _myconfig.myLargeFontSize,
                              color: _myconfig.fontcolor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("broccoli",
                            style: TextStyle(
                                fontSize: _myconfig.myExtraSmallFontSize)),
                        Text("Rs 45.00",
                            style: TextStyle(
                                fontSize: _myconfig.myFontSize,
                                fontWeight: FontWeight.bold)),
                        Text("Rs 50.00 Save Rs 5.00",
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
                Column(
                  children: [
                    Text(
                      "$pricewatermelon",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(50, 45)),
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
                                  pricewatermelon = pricewatermelon - 45;
                                  totalwatermelon = totalwatermelon - 45;
                                  total = totalstrawberry - 45;
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
                                pricewatermelon = pricewatermelon + 45;
                                totalwatermelon = totalwatermelon + 45;
                                total = totalwatermelon + totalstrawberry;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //second
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
                        Text("Fresh Cabbage",
                            style: TextStyle(
                                fontSize: _myconfig.myExtraSmallFontSize)),
                        Text("Rs 15.00",
                            style: TextStyle(
                                fontSize: _myconfig.myFontSize,
                                fontWeight: FontWeight.bold)),
                        Text("Rs 25.00 Save Rs 10.00",
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
                Column(
                  children: [
                    Text(
                      "$pricestrawberry",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(50, 45)),
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
                                if (que2 != 0) {
                                  que2--;
                                  pricestrawberry = pricestrawberry - 15;
                                  totalstrawberry = totalstrawberry - 15;
                                  total = totalwatermelon - 15;
                                } else {
                                  return;
                                }
                              });
                            },
                          ),
                          Text(
                            "$que2",
                            style: TextStyle(fontSize: 20),
                          ),
                          InkWell(
                            child: Text(
                              "+",
                              style: TextStyle(fontSize: 25),
                            ),
                            onTap: () {
                              setState(() {
                                que2++;
                                pricestrawberry = pricestrawberry + 15;
                                totalstrawberry = totalstrawberry + 15;
                                total = totalwatermelon + totalstrawberry;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 600,
            ),
            Divider(
              thickness: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    "Total:",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                  child: Text(
                    "$total",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Mybutton(buttontext: "Place Order", ontap: () {}),
          ],
        ));
  }
}
