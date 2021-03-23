import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'main.dart';

class Mentor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            child: Row(
                children:[Text('Mentor'),
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
          backgroundColor: Color(0xFF666A86),
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
          _createCard ('You Matter/mentor1.jpeg','Natalia Taylor',"With a BSC in Psychology from Western university, I'm always happy to chat fod,dogs,travel,and everything in between!"),
          _createCard ('You Matter/mentor2.jpeg','Patricia Watt',"Harvard univeristy grad, Passionate advocate fro women in STEM, empowerment, and life! Don't hesistate to reach out!"),
          _createCard ('You Matter/mentor3.jpeg','Jonah Hill',"I've lived in 10 different countries,speak four languages!I love meeting different people and I'd love to chat!"),
          _createCard ('You Matter/mentor4.jpeg','Enrique West','Brief Intro'),
          _createCard ('You Matter/mentor5.jpeg','Damien Braun','Brief Intro'),
          _createCard ('You Matter/mentor6.jpeg','Ellie Osborne','Brief Intro'),
          _createCard ('You Matter/mentor7.jpeg','Cierra Vega','Brief Intro'),
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