import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => CreateA(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => Home(),
      '/third':  (context) =>Begin(),
    },
  ));
}

class CreateA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin:Alignment.topCenter,
                end:Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xFFE8E0DE),
                  Color(0xFFE8E0DE),
                  Color(0xFF666A86),

                ],
              ),
            ),
            child:Center(
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
                      Navigator.pushNamed(context, '/second');
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
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () { Scaffold.of(context).openDrawer(); },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
        ),
        actions:<Widget>[IconButton(icon:Icon(Icons.notifications),onPressed:(){},),],
        title: Text("You matter",style: TextStyle(fontSize:30, fontFamily: 'Circular std', color:Colors.white)),
        backgroundColor: Color(0XFF666A86),
        toolbarHeight: 100,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.end,
      children:[

        Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:[
             SizedBox(width: 10),
            _createButton('Relax',Color(0xFF788AA3)),
            _createButton('Goals',Color(0xFF92B6B1)),
          SizedBox(width: 10),
        ]
        ),
        SizedBox(height: 10),
        Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              SizedBox(width: 10),
              _createButton('My Journal',Color(0xFFB2C8AB)),
              _createButton('Good News',Color(0xFFE8DDB5)),
              SizedBox(width: 10),
            ]
        ),
        SizedBox(height: 10),
        Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[

              _createButton('Mentor Chat',Color(0xFF788AA3)),
            ]
        )
        ],
        ),
      ),
      );
  }
  Widget _createButton (String content,Color c){
    return SizedBox(
        width:120,
        height:100,
        child:RaisedButton(
        onPressed:(){},
        color:c,
        textColor:Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),

        //padding: EdgeInsets.all(40.0),
        child:Container(
          decoration:BoxDecoration(),
          child: Text(content,style:TextStyle(fontSize:20)),
        ),
    ),
    );
  }
}
class Begin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

