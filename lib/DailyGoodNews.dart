import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://flutter.dev';
void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
class GoodNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            child: Row(
                children:[Text('Good News'),
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
          backgroundColor: Color(0XFFE8DDB5),
          toolbarHeight: 100,
        ),
        body: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              SizedBox(height:10),
              Text(
                "  Article/Post:", style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Color(0XFFE8DDB5)),
              ),
                SizedBox(height:10),
              Row(children:[

                FlatButton(
                    onPressed:()async {
        const url = 'https://www.allrecipes.com/recipes/84/healthy-recipes/';
        if (await canLaunch(url)) {
        await launch(url);
        } else {
        throw 'Could not launch $url';
        }
        },
                    padding: EdgeInsets.all(0.0),
                    child: Image.asset('You Matter/article1.jpeg',
                      width: 150,
                      height: 150,)
                ),

                SizedBox(width:10),

                FlatButton(
                    onPressed:()async {
                      const url = 'https://allwork.space/2020/09/what-is-the-wellness-wheel-heres-how-it-can-help-you-lead-a-plentiful-balanced-life/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image.asset('You Matter/article2.jpeg',
                  width: 150,
                  height: 150,)
                ),
                ]),
                SizedBox(height:10),
                Text(
                "  Cute Animals Pictures:", style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Color(0XFFE8DDB5)),
              ),
                SizedBox(height:10),
              Row(children:[
                FlatButton(
                    onPressed:(){
                      Navigator.pushNamed(context, '/list');
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image.asset('You Matter/cuteanimal.jpeg',
                      width: 150,
                      height: 150,)
                ),
                SizedBox(width:10),
                FlatButton(
                    onPressed:(){
                      Navigator.pushNamed(context, '/list');
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image.asset('You Matter/cuteanimal1.jpeg',
                      width: 150,
                      height: 150,)
                ),
              ]),
                SizedBox(height:70),
                Text(
                  "  Daily Inspirational Quote:", style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Color(0XFFE8DDB5)),
                ),

              Container(
                width:400,
                height:100,
                //decoration:BoxDecoration(),
                color:Color(0XFFE8DDB5),
                child: Text(' "Be the change that you wish to see in the world."        '
                    '          - Mahatma Gandhi ',style:TextStyle(fontSize:15,color:Colors.white)),
              ),

            ],)
        )
    );
  }

}