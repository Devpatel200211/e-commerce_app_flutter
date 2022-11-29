import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/screen/bottomnavigation.dart';
import 'package:project/screen/homescreen.dart';
import 'package:project/screen/utils/mydefaults.dart';
import 'package:project/screen/utils/mywidgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Myconfig _myconfig = Myconfig();
  TextEditingController fullnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController cellphonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController comfirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(_myconfig.myRegisterScreenLogo),
            SizedBox(height: _myconfig.myHeight),
            MyInputField(
              mycontroller: fullnamecontroller,
              mykeyboard: TextInputType.text,
              obscure: false,
              hinttext: "Full Name",
              myicon: Icon(
                Icons.person,
                color: _myconfig.icon,
              ),
            ),
            SizedBox(height: _myconfig.myHeight),
            MyInputField(
              mycontroller: emailcontroller,
              mykeyboard: TextInputType.emailAddress,
              obscure: false,
              hinttext: "Email",
              myicon: Icon(
                Icons.email,
                color: _myconfig.icon,
              ),
            ),
            SizedBox(height: _myconfig.myHeight),
            MyInputField(
              mycontroller: cellphonecontroller,
              mykeyboard: TextInputType.phone,
              obscure: true,
              hinttext: "Cell Phone",
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
            MyInputField(
              mycontroller: comfirmpassword,
              mykeyboard: TextInputType.text,
              obscure: true,
              hinttext: "Confirm Password",
              myicon: Icon(
                Icons.lock,
                color: _myconfig.icon,
              ),
            ),
            SizedBox(height: _myconfig.myHeight),
            MyInputField(
              mycontroller: addresscontroller,
              mykeyboard: TextInputType.text,
              obscure: false,
              hinttext: "Address",
              myicon: Icon(
                Icons.location_city,
                color: _myconfig.icon,
              ),
            ),
            SizedBox(height: _myconfig.myHeight * 2),
            Mybutton(
              ontap: () async {
                _submit();
              },
              buttontext: "SIGN UP",
            ),
            SizedBox(height: _myconfig.myHeight),
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Already have an account",
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
    if (fullnamecontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "Enter the Full Name ");
      return;
    }

    if (emailcontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "Enter the Email ");
      return;
    }
    if (cellphonecontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "Enter the Cellphone ");
      return;
    }
    if (passwordcontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "Enter the Password ");
      return;
    }
    if (comfirmpassword.text.isEmpty) {
      Fluttertoast.showToast(msg: "Enter the Comfirm Password ");
      return;
    }
    if (addresscontroller.text.isEmpty) {
      Fluttertoast.showToast(msg: "Enter the Address ");
      return;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNavbarScreen()),
      );
    }
  }
}
