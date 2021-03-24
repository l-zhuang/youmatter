import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'main.dart';

class Journal extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            child: Row(
                children:[Text('Journal'),
                  SizedBox(width:60),
                  Image.asset(
                    'You Matter/you matter1.png',
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),

                ]
            ),
          ),
          backgroundColor: Color(0XFFB2C9AB),
          toolbarHeight: 100,
        ),
        body: Container(
            child: Column(children:[
              TextFormField(
// The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {


                },
                child: Text('Submit'),
              ),
            ],)
        )
    );
  }


}



