import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              textBaseline: TextBaseline.alphabetic,
            children:[
              SizedBox(height:100),
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize:30,
                  fontFamily: 'Circular std',
                  color:Colors.black
                )
              ),
              SizedBox(height:15),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'First and Last Name',
                ),
              ),
              SizedBox(height:15),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                ),
              ),
              SizedBox(height:15),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                ),
              ),
              SizedBox(height:15),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Email Confirmation',
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Login'),
                    onPressed: () {
                      // TODO: Clear the text fields (101)
                    },
                  ),
                  RaisedButton(
                    child: Text('Sign Up'),
                    onPressed: () {
                      // TODO: Show the next page (101)
                    },
                  ),
                ],
              ),
            ]
          )
        )
      ),
    );
  }
}

