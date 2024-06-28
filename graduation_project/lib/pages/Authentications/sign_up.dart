import 'package:flutter/material.dart';

class Sign_up_page extends StatelessWidget {
  Sign_up_page();
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          "images/sign_background.jpg",
        ),
      )),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 90),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Image(
                    image: AssetImage("images/LOGO.png"),
                  ),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(
                              color: Color(0xff00B2FF),
                              fontWeight: FontWeight.bold),
                          border: UnderlineInputBorder())),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "password",
                      hintText: "Enter your password",
                      labelStyle: TextStyle(
                          color: Color(0xff00B2FF),
                          fontWeight: FontWeight.bold),
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Confirm password",
                          labelStyle: TextStyle(
                              color: Color(0xff00B2FF),
                              fontWeight: FontWeight.bold),
                          border: UnderlineInputBorder())),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                              color: Color(0xff00B2FF),
                              fontWeight: FontWeight.bold),
                          border: UnderlineInputBorder())),
                  SizedBox(height: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          primary: Color(0xff661781),
                          minimumSize: Size(220, 38)),
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account",
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "    login",
                          style: TextStyle(
                              color: Color(0xffB128D6),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    )));
  }
}
