import 'package:flutter/material.dart';
import 'dart:async';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
  routes: <String, WidgetBuilder>{
        '/LoginPage': (BuildContext context) => LoginPage()
      },
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

//this is to set the timer that how much time you want to dispaly the splash screen
  startTime() async{
    var _duration = Duration(seconds: 6);
    return Timer(_duration, navigationPage);
  }

// this will navigate the screen to the next page
void navigationPage(){
  Navigator.of(context).pushReplacementNamed('/LoginPage');
}


  @override
  void initState() {
    super.initState();
    startTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.black),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HACKTOBER FEST 2020', style: TextStyle(
                 color: Colors.white70,
                 letterSpacing: 2.0,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Pacifico',
               ),),
               SizedBox(height: 20,),
               Container(
                 child:Image.asset('assets/loadlogo.gif',
                 height: 600,
                 fit: BoxFit.cover,
                 ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard),
        title:Text('HACKTOBER',
        style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        letterSpacing: 1.0,
        )),
        elevation: 40.0,
        backgroundColor: Colors.purple,
        toolbarHeight: 80.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/hack.jpg'),
              radius: 195,
            ),
          ],
          ),
      ),
    );
  }
}