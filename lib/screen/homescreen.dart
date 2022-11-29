import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/fruitscreen.dart';
import 'package:project/screen/utils/mydefaults.dart';
import 'package:project/screen/vegetablesscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Myconfig _myconfig = Myconfig();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          leadingWidth: 80,
          elevation: _myconfig.myElevation,
          leading: InkWell(
            onTap: () {
              // Navigator.pop(context);
            },
            child: Image.asset(
              _myconfig.myRegisterScreenLogo,
            ),
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "Smart Buy",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: CupertinoSearchTextField(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 300,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width > 400
                              ? MediaQuery.of(context).size.height * 0.25
                              : MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.height * 0.20,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FruitsScreen()),
                              );
                            },
                            child: Card(
                                color: Colors.transparent,
                                elevation: 4,
                                child: Image.asset("assets/images/cherry.jpg")),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Fruits",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width > 400
                              ? MediaQuery.of(context).size.height * 0.25
                              : MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.height * 0.20,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VegetablesScreen()),
                              );
                            },
                            child: Card(
                                color: Colors.transparent,
                                elevation: 4,
                                child:
                                    Image.asset("assets/images/broccoli.jpg")),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "vegetables",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
        )));
  }
}
