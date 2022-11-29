import 'package:flutter/material.dart';
import 'package:project/screen/bottomnavigation.dart';
import 'package:project/screen/registerScreen.dart';
import 'package:project/screen/utils/mydefaults.dart';
import 'package:project/screen/utils/mywidgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Myconfig _myconfig = Myconfig();

  TextEditingController cellphonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(_myconfig.myLoginScreenLogo),
            SizedBox(height: _myconfig.myHeight),
            MyInputField(
              mycontroller: cellphonecontroller,
              mykeyboard: TextInputType.phone,
              obscure: false,
              hinttext: "Contact Number",
              myicon: Icon(
                Icons.phone,
                color: _myconfig.icon,
              ),
            ),
            SizedBox(height: _myconfig.myHeight),
            MyInputField(
              mycontroller: passwordcontroller,
              mykeyboard: TextInputType.text,
              obscure: true,
              hinttext: "Password",
              myicon: Icon(
                Icons.lock,
                color: _myconfig.icon,
              ),
            ),
            SizedBox(height: _myconfig.myHeight),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: _myconfig.myHeight * 2),
            Mybutton(
              ontap: () {
                _submit();
              },
              buttontext: "SIGN IN",
            ),
            SizedBox(height: _myconfig.myHeight),
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text(
                      "Create new Acount?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]))
          ],
        ),
      )),
    );
  }

  void _submit() async {
    if (cellphonecontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "Enter the Cellphone number ");
      return;
    }

    if (passwordcontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "Enter the Password ");
      return;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNavbarScreen()),
      );
    }
  }
}
