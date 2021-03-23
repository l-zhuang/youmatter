
// Import the firebase_core plugin
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:health_app/DailyGoodNews.dart';
import 'package:health_app/MentorPage.dart';
import 'package:health_app/createAccout.dart';
import 'package:health_app/login.dart';
import 'package:health_app/meditationPage.dart';
import 'FriendPage.dart';
import 'ListAPI.dart';
import 'homePage.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      '/': (context) => Welcome(),
      '/first': (context) => Login(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => CreateAccount(),
      '/third':  (context) =>Home(),
      '/fourth':  (context) =>Meditation(),
      '/goodNews': (context) =>GoodNews(),
      '/list': (context) =>MyApp(),
      '/mentor': (context) =>Mentor(),
      '/friend': (context) =>Friend(),
    },
  ));
}


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xFF666A86),
              Color(0xFF666A86),
              Color(0xFFE8E0DE),
            ],
          ),
        ),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: [
                SizedBox(height: 40),
                Row(
                  children:[
                    SizedBox(width: 12),
                    Image.asset(
                    'You Matter/you matter.png',
                    width: 380,
                    height: 380,
                    fit: BoxFit.cover,
                  ),],
                ),

                SizedBox(height: 20),
                RaisedButton(
                  color: Color(0xFF666A86),
                  textColor: Colors.white,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/first');
                  },
                ),
                SizedBox(height: 20),
                RaisedButton(
                  color: Color(0xFF666A86),
                  textColor: Colors.white,
                  child: Text('Create Account'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                ),
              ]
          ),
        ),
      ),
    );
  }
}

