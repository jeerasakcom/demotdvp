import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tdvp/components/homescreen/homescreen.dart';
import 'package:tdvp/utility/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //MapsPage(),
      SplashPage(),
    );
  }
}


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
              ),
              
              Text(
                'โรงพิมพ์อาสารักษาดินแดน กรมการปกครอง\n'
                'Territorial Defence Volunteers Printing',
                textAlign: TextAlign.center,
                style: StyleProjects().TopicMainT3,
              ),
              
            ],
          ),
        
      ),
    );
  }
}
