import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'main.dart';

class Meditation extends StatelessWidget {

  static String myVideoId = '395ZloN4Rr8';
  // the full url: https://www.youtube.com/watch?v=PQSagzssvUQ&ab_channel=NASA
  // it's an interesting video from NASA on Youtube

  // Initiate the Youtube player controller
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            child: Row(
              children:[Text('Relax'),
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
        body: Container(
          child: Column(children:[
            YoutubePlayer(
              controller: _controller,
              liveUIColor: Colors.amber,
            ),
            Image.asset(
              'You Matter/clock.png',
              width: 400,
              height: 400,
            ),
          ],)
        )
    );
  }


}
