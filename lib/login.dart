import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';
import 'main.dart';

FirebaseApp secondaryApp = Firebase.app('SecondaryApp');
FirebaseAuth auth = FirebaseAuth.instanceFor(app: secondaryApp);

class Login extends StatefulWidget{
  @override
  _LoginState createState()=>_LoginState();

}
class _LoginState extends State<Login> {
  @override
  String _email,_password;
  final auth=FirebaseAuth.instance;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Image.asset(
                            'You Matter/you matter.png',
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                          ),

                    ]),
                    Text(
                        'Login',
                        style: TextStyle(
                            fontSize:30,
                            fontFamily: 'Circular std',
                            color:Colors.black
                        )
                    ),
                    SizedBox(height:20),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          labelText: 'Email',
                      ),
                      onChanged: (value){
                        setState((){
                          _email=value.toString();
                        });
                      },
                    ),
                    SizedBox(height:15),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Password',
                      ),
                      onChanged: (value){
                        setState((){
                          _password=value.toString();
                        });
                      },
                    ),

                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          color: Color(0xFF666A86),
                          child: Text('Create Account'),
                          onPressed: () {
                            // TODO: Show the next page (101)
                            Navigator.pushNamed(context, '/second');
                          },
                        ),
                        RaisedButton(
                          color: Color(0xFF666A86),
                          child: Text('Sign In'),
                          onPressed: () async {
                            // TODO: Show the next page (101)
                            try {
                              UserCredential userCredential = await auth.signInWithEmailAndPassword(
                                  email: _email, password: _password);
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>Home()));
                            } on FirebaseAuthException catch(e){
                              if (e.code == 'user-not-found') {
                                //print('No user found for that email.');
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('No user found for that email.')));
                              } else if (e.code == 'wrong-password') {
                                //print('Wrong password provided for that user.');
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('Wrong password')));
                              }
                            }

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