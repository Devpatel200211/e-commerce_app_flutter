import 'package:flutter/material.dart';
import 'package:project/screen/utils/mydefaults.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  Myconfig _myconfig = Myconfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: _myconfig.myElevation,
        leading: InkWell(
          onTap: () {},
          child: Image.asset(
            "assets/images/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Order List",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: _myconfig.myMargin * 0.80,
          right: _myconfig.myMargin * 0.80,
          top: _myconfig.myMargin / 2,
          bottom: _myconfig.myMargin / 2,
        ),
        child: Container(
          // color: Colors.red,
          child: Center(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                      // color: Colors.blue,
                      height: MediaQuery.of(context).size.height * 0.80,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Strawberry",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.blue),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("Bill No : IN-412547"),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text("Date : 20/06/22"),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    "Pending",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *
                                        0.040,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      border: Border.all(
                                        color: Colors.grey.shade100,
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Text(
                                      "Rs.45",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  ImageIcon(
                                    AssetImage(
                                        "assets/images/processing_icon.png"),
                                    color: Colors.blue,
                                    size: 40,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Broccoli",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.blue),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("Bill No : IN-412560"),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text("Date : 15/06/22"),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    "Delivered",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *
                                        0.040,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      border: Border.all(
                                        color: Colors.grey.shade100,
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Text(
                                      "Rs.29",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  ImageIcon(
                                    AssetImage(
                                        "assets/images/out_for_delivery_icon.png"),
                                    color: Colors.blue,
                                    size: 40,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
