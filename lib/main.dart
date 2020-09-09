import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Asad/AndroidStudioProjects/login_signup/lib/already_have_an_account.dart';
// import 'login.dart';
import 'already_have_an_account.dart';
import 'tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),

      home: AllTabs(),

     //  AlreadyHaveAnAccountCheck(
     //          login: false,
     //          press: () {
     //            Navigator.push(
     //              context,
     //              MaterialPageRoute(
     //                builder: (context) {
     //                  return Container();
     //                },
     //              ),
     //            );
     //          },
     //        ),
    );
  }
}
