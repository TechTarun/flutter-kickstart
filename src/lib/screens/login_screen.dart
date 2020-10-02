import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  // static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              MaterialButton(
                child: Text('Login'),
                color: Colors.indigo[200],
                elevation: 2.0,
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  'Already Registered',
                  style: TextStyle(
                      color: Colors.grey[100],
                      fontWeight: FontWeight.w100,
                      fontSize: 14.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
