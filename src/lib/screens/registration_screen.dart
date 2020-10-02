import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'HACKTOBERFEST..',
                  style: TextStyle(
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.w200,
                      fontSize: 32.0),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress, //for emails
                decoration: InputDecoration(hintText: 'username'),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress, //for emails
                decoration: InputDecoration(hintText: 'Enter Your Email'),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                obscureText: true, //for passwords
                decoration: InputDecoration(hintText: 'Enter Your Password'),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextField(
                obscureText: true, //for passwords
                decoration: InputDecoration(hintText: 'Re Enter Your Password'),
              ),
              SizedBox(
                height: 40.0,
              ),
              MaterialButton(
                child: Text('Register'),
                color: Colors.indigo[200],
                elevation: 2.0,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
