import 'package:flutter/material.dart';
import 'package:navigation_drawer/pages/welcome.dart';
import 'package:navigation_drawer/services/auth.dart';


class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email, password;

  AuthServices authServices = AuthServices();
  bool isLoading = false;

  signIn() async {
    if (_formKey.currentState.validate()) {
      await authServices.signInEmailAndPass(email, password).then((val) {
        if (val != null) {
          setState(() {
            isLoading = false;
          });

          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => WelcomePage()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomPadding: false,
      body: isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : ListView(
                      children:  <Widget>[Container(
                        child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                              child: Text('Sign In',
                                  style: TextStyle(
                                      fontSize: 80.0, fontWeight: FontWeight.bold)),
                            ),
                            
                            Container(
                              padding: EdgeInsets.fromLTRB(260.0, 120.0, 0.0, 0.0),
                              child: Text('.',
                                  style: TextStyle(
                                      fontSize: 80.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              validator: (val) {
                                return val.isEmpty ? "Enter Email Id" : null;
                              },
                              decoration: InputDecoration(labelText: 'Email'),
                              onChanged: (val) {
                                email = val;
                              },
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              validator: (val) {
                                return val.isEmpty ? "Enter Password" : null;
                              },
                              decoration: InputDecoration(labelText: 'Password'),
                              obscureText: true,
                              onChanged: (val) {
                                password = val;
                              },
                            ),
                            SizedBox(height: 5.0),
                            Container(
                              alignment: Alignment(1.0, 0.0),
                              padding: EdgeInsets.only(top: 15.0, left: 20.0),
                              child: InkWell(
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {
                                signIn();
                              },
                              child: Text('Log In'),
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account ?",
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                          SizedBox(width: 5.0),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/signup');
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
            ),
                      ],),
    );
  }
}
