import 'package:flutter/material.dart';
//import 'package:flutter_tts/flutter_tts.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _user;
  String _password;
  

  final _formKey = new GlobalKey<FormState>();

  Widget buildlogo() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text("HACKTOBER",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ))
    ]);
  }

  Widget buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Login",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Pacifico'))
                  ],
                ),
                showUserInput(),
                showUserPassword(),
                loginButton(),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget showUserInput() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: new TextFormField(
          decoration: InputDecoration(
            hintText: 'Username or TeamId',
            hoverColor: Colors.white,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(
              Icons.people,
              color: Colors.orange,
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(60.0)),
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
          onSaved: (value) => _user = value.trim()),
    );
  }

  Widget showUserPassword() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.orange,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60.0),
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            obscureText: true,
            autofocus: false,
            validator: (value) =>
                value.isEmpty ? 'Password can\'t be empty' : null,
            onSaved: (value) => _password = value.trim(),
          ),
        ],
      ),
    );
  }

  Widget loginButton() {
    return Padding(
      padding: EdgeInsets.all(10),
      //fromLTRB(50.0, 40.0, 50.0, 0),
      child: Material(
        borderRadius: BorderRadius.circular(60.0),
        shadowColor: Colors.orangeAccent.shade200,
        elevation: 5.0,
        child: MaterialButton(
          splashColor: Colors.orangeAccent,
          minWidth: 200.0,
          height: 60.0,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          color: Colors.deepOrangeAccent,
          child: Text(
            'Continue',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 30,
                fontFamily: 'Pacifico'),
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.amber[300],
          body: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange[600],
                        borderRadius: BorderRadius.only(
                            bottomLeft: const Radius.circular(70),
                            bottomRight: const Radius.circular(70)))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: new Form(
                    key: _formKey,
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        buildlogo(),
                        SizedBox(
                          height: 30.0,
                        ),
                        buildContainer(),
                      ],
                    ),
                  ))
                ],
              )
            ],
          )),
    );
  }
}
