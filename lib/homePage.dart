import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
// Import the firebase_core plugin
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:health_app/createAccout.dart';
import 'package:health_app/login.dart';
import 'package:health_app/meditationPage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions:<Widget>[
          IconButton(icon:Icon(Icons.notifications),onPressed:(){},),
        ],
        centerTitle: true,
        title: Image.asset(
          'You Matter/you matter.png',
          width: 130,
          height: 130,
          fit: BoxFit.cover,
        ),
        //Text("You matter",style: TextStyle(fontSize:30, fontFamily: 'Circular std', color:Colors.white)),
        backgroundColor: Color(0XFF666A86),
        toolbarHeight: 100,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[

            Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  SizedBox(width: 10),
                  //_createButton('Relax',Color(0xFF788AA3),context),
          SizedBox(
            width:120,
            height:100,
            child:RaisedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/fourth');},
              color:Color(0xFF788AA3),
              textColor:Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),

              //padding: EdgeInsets.all(40.0),
              child:Container(
                decoration:BoxDecoration(),
                child: Text('Relax',style:TextStyle(fontSize:20)),
              ),
            ),
          ),
                  SizedBox(
                    width:120,
                    height:100,
                    child:RaisedButton(
                      onPressed:(){
                        Navigator.pushNamed(context, '/fourth');},
                      color:Color(0xFF92B6B1),
                      textColor:Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),

                      //padding: EdgeInsets.all(40.0),
                      child:Container(
                        decoration:BoxDecoration(),
                        child: Text('Goals',style:TextStyle(fontSize:20)),
                      ),
                    ),
                  ),
                  //_createButton('Goals',Color(0xFF92B6B1),context),
                  SizedBox(width: 10),
                ]
            ),
            SizedBox(height: 20),
            Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  SizedBox(width: 10),
                  //_createButton('My Journal',Color(0xFFB2C8AB),context),
                  SizedBox(
                    width:120,
                    height:100,
                    child:RaisedButton(
                      onPressed:(){
                        Navigator.pushNamed(context, '/fourth');},
                      color:Color(0xFFB2C8AB),
                      textColor:Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),

                      //padding: EdgeInsets.all(40.0),
                      child:Container(
                        decoration:BoxDecoration(),
                        child: Text('My Journal',style:TextStyle(fontSize:20),textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  //_createButton('Good News',Color(0xFFE8DDB5),context),

                  SizedBox(
                    width:120,
                    height:100,
                    child:RaisedButton(
                      onPressed:(){
                        Navigator.pushNamed(context, '/goodNews');},
                      color:Color(0xFFE8DDB5),
                      textColor:Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),

                      //padding: EdgeInsets.all(40.0),
                      child:Container(
                        decoration:BoxDecoration(),
                        child: Text('Good News',style:TextStyle(fontSize:20),textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ]
            ),
            SizedBox(height: 20),
            Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  SizedBox(width: 10),
                  //_createButton('Mentor Chat',Color(0xFF666A86),context),
                  SizedBox(
                    width:120,
                    height:100,
                    child:RaisedButton(
                      onPressed:(){
                        Navigator.pushNamed(context, '/mentor');},
                      color:Color(0xFF666A86),
                      textColor:Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),

                      //padding: EdgeInsets.all(40.0),
                      child:Container(
                        decoration:BoxDecoration(),
                        child: Text('Mentor Chat',style:TextStyle(fontSize:20),textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  //_createButton('Friends',Color(0xFF788AA3),context),
                  SizedBox(
                    width:120,
                    height:100,
                    child:RaisedButton(
                      onPressed:(){
                        Navigator.pushNamed(context, '/friend');},
                      color:Color(0xFF788AA3),
                      textColor:Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),

                      //padding: EdgeInsets.all(40.0),
                      child:Container(
                        decoration:BoxDecoration(),
                        child: Text('Friends',style:TextStyle(fontSize:20),textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ]
            ),
            SizedBox(height:120),
            RaisedButton(
              child:Text("LogOut"),
              onPressed:(){
                FirebaseAuth.instance.signOut();
                Navigator.pushNamed(context, '/');},
              color:Color(0xFF788AA3),
            ),
          ],

        ),
      ),
    );
  }
  Widget _createButton (String content,Color c, BuildContext context){
    return SizedBox(
      width:120,
      height:100,
      child:RaisedButton(
        onPressed:(){
          Navigator.pushNamed(context, '/fourth');},
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

