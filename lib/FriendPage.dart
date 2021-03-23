import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'main.dart';

class Friend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          child: Row(
              children:[Text('Your Friends'),
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
        backgroundColor: Color(0xFF788AA3),
        toolbarHeight: 100,
      ),
      body:

      GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,

        children: //<Widget>[Card()],
        // TODO: Build a grid of cards (102)
        <Widget>[
          _createCard ('You Matter/friends.jpeg','Anna Lau',''),
          _createCard ('You Matter/friends1.jpeg','Ed Sheeran',''),
          _createCard ('You Matter/friends2.jpeg','Neils Chin',''),
        ],
      ),
    );
  }
  //function
  Widget _createCard (String image,String text,String sText){
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0 / 11.0,
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(text),
                SizedBox(height: 8.0),
                Text(sText,style:TextStyle(fontSize:10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}