import 'package:flutter/material.dart';

import '../HomePage.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  String oldPassword = '';
  String newPassword = '';
  String confirmPassword = '';
  bool passwordChanged = false;
  bool passwordsMatch = true;
  bool canEditFields =
      true; // حالة تحديد ما إذا كان يمكن للمستخدم التعديل على الحقول

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: Color(0xff0D0018),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 100),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        enabled:
                            canEditFields, // تحديد ما إذا كان يمكن تعديل الحقل
                        decoration: InputDecoration(
                          labelText: 'Old Password',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        obscureText: true,
                        onChanged: (value) {
                          if (canEditFields) {
                            // تحقق مما إذا كان يمكن تعديل الحقل أم لا
                            setState(() {
                              oldPassword = value;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        enabled:
                            canEditFields, // تحديد ما إذا كان يمكن تعديل الحقل
                        decoration: InputDecoration(
                          labelText: 'New Password',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        obscureText: true,
                        onChanged: (value) {
                          if (canEditFields) {
                            // تحقق مما إذا كان يمكن تعديل الحقل أم لا
                            setState(() {
                              newPassword = value;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        enabled: canEditFields,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        obscureText: true,
                        onChanged: (value) {
                          if (canEditFields) {
                            setState(() {
                              confirmPassword = value;
                              passwordsMatch = newPassword == confirmPassword;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(
                    width: 90,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (newPassword == confirmPassword) {
                        setState(() {
                          passwordChanged = true;
                          canEditFields = false;
                        });
                      } else {
                        setState(() {
                          passwordsMatch = false;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFA800E3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(180, 30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Visibility(
                visible: !passwordsMatch && confirmPassword.isNotEmpty,
                child: Center(
                  child: Text(
                    'Passwords do not match!',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Visibility(
                visible: oldPassword.isEmpty,
                child: Center(
                  child: Text(
                    'Wrong old password',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Visibility(
                visible: passwordChanged,
                child: Column(
                  children: [
                    Text(
                      'Password changed successfully!',
                      style: TextStyle(color: Colors.green),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFA800E3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            minimumSize: Size(220, 30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Back to Home Page ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Icon(Icons.arrow_right_alt),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
