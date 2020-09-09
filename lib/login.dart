import 'package:flutter/material.dart';

import 'already_have_an_account.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(children: [
                Container(
                  child: Text(
                    'Email Address',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 12.0,
                        height: 2.0,
                        backgroundColor: Colors.transparent,
                        color: Colors.black),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            )),
                        contentPadding: EdgeInsets.only(
                            left: 5, right: 3, top: 10, bottom: 0),
                        errorStyle: TextStyle(
                          fontSize: 10.0,
                          height: 0.3,
                        ),
                        filled: true,
                        hintText: "xyz@gmail.com"),
                  ),
                ),
              ]),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(children: [
                Container(
                  child: Text(
                    'Password',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12 , fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border(),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 12.0,
                        height: 2.0,
                        backgroundColor: Colors.transparent,
                        color: Colors.black),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            )),
                        contentPadding: EdgeInsets.only(
                            left: 5, right: 3, top: 10, bottom: 0),
                        errorStyle: TextStyle(
                          fontSize: 10.0,
                          height: 0.3,
                        ),
                        filled: true,
                        hintText: "********"),
                  ),
                ),
              ]),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(190, 0, 0, 10),
              child: Text(
                "Forgot password ?",
                style: TextStyle(
                  color: Colors.orange[800],
                  fontSize: 12
                ),

              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Center(
                child: Container(
                  width: 300,
                  height: 40,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.yellow[700],
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),

      AlreadyHaveAnAccountCheck(
                 login: false,
                 press: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) {
                         return Container();
                       },
                     ),
                   );
                 },
               ),

      ],
        ),

      ),
    );
  }
}
