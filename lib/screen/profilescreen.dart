import 'package:flutter/material.dart';
import 'package:project/screen/utils/mydefaults.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Myconfig _myconfig = Myconfig();

  String? profileUrl = "";

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
            "Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  child: Image.asset("assets/images/profile.png"),
                ),
                SizedBox(height: 10),
                Text(
                  "Dev Patel",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "+91 1234567890",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: _myconfig.fontcolor,
                  ),
                  title: Text("My Account"),
                  onTap: () {},
                  subtitle: Text(
                    "Edit personal info, Change Password",
                    style: TextStyle(fontSize: 12),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.chat_bubble, color: _myconfig.fontcolor),
                  title: Text("Support"),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  subtitle: Text(
                    "Talk to Us",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.payment, color: _myconfig.fontcolor),
                  title: Text("Payment"),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  subtitle: Text(
                    "Manage Your Payment Methods",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings, color: _myconfig.fontcolor),
                  title: Text("Settings"),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  subtitle: Text(
                    "Terms & Conditions, Privacy, Licenses",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout, color: _myconfig.fontcolor),
                  title: Text("Logout"),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
