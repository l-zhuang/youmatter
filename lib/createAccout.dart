import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class CreateAccount extends StatefulWidget{
  @override
  _CreateAccountState createState()=>_CreateAccountState();
}
class _CreateAccountState extends State<CreateAccount> {
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
                        FlatButton(
                          textColor: Colors.white,
                          child: Text('Login'),
                          onPressed: () {
                            // TODO: Clear the text fields (101)
                            Navigator.pushNamed(context, '/first');
                          },
                        ),
                        RaisedButton(
                          color: Color(0xFF666A86),
                          child: Text('Sign Up'),
                          onPressed: () async {
                            // TODO: Show the next page (101)
                            try {
                              UserCredential userCredential = await auth.createUserWithEmailAndPassword(
                                  email: _email, password: _password);
                            } on FirebaseAuthException catch(e){
                              if (e.code == 'weak-password') {
                                //print('The password provided is too weak.');
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('The password provided is too weak.')));
                              } else if (e.code == 'email-already-in-use') {
                                //print('The account already exists for that email.');
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('The account already exists for that email.')));
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