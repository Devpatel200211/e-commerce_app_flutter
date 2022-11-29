import 'package:flutter/material.dart';
import 'package:project/screen/utils/mydefaults.dart';

class MyInputField extends StatefulWidget {
  final TextEditingController mycontroller;
  final TextInputType mykeyboard;
  final bool obscure;
  final String hinttext;
  final Icon myicon;

  const MyInputField(
      {Key? key,
      required this.mycontroller,
      required this.mykeyboard,
      required this.obscure,
      required this.hinttext,
      required this.myicon})
      : super(key: key);

  @override
  State<MyInputField> createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  offset: Offset(0, 2))
            ]),
        child: TextFormField(
          controller: widget.mycontroller,
          keyboardType: widget.mykeyboard,
          obscureText: widget.obscure,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 64, 106, 161), width: 2),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 64, 106, 161), width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 64, 106, 161), width: 2),
            ),
            hintText: widget.hinttext,
            contentPadding: EdgeInsets.symmetric(vertical: 18),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: widget.myicon,
            ),
          ),
        ),
      ),
    );
  }
}

class Mybutton extends StatefulWidget {
  final String buttontext;
  final Function ontap;
  const Mybutton({
    Key? key,
    required this.buttontext,
    required this.ontap,
  }) : super(key: key);

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          widget.ontap();
        },
        child: Text(
          widget.buttontext,
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 0, 74, 173)),
          // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //     RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(30)))
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  final double height;
  final bool showFilterIcon;
  final bool showSearchIcon;
  final Function onTap;
  final String text;

  const SearchBar(
      {Key? key,
      required this.showSearchIcon,
      required this.text,
      required this.height,
      required this.showFilterIcon,
      required this.onTap})
      : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  Myconfig _myconfig = Myconfig();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: widget.height,
        // color: Colors.green,
        child: Row(
          children: [
            SizedBox(width: _myconfig.myWidth),
            widget.showSearchIcon
                ? Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: _myconfig.myWidth),
                    ],
                  )
                : Container(),
            Text(
              widget.text,
              style: TextStyle(color: Color(0xFF6D6F71)),
            ),

            Spacer(), //Icon(Icons.filter_alt_outlined)
            widget.showFilterIcon
                ? ImageIcon(AssetImage("assets/images/filter.png"))
                : Container(),
            SizedBox(width: _myconfig.myWidth),
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0XFFEDF2F7), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
