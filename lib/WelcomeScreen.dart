import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_form/login_screen.dart';
import 'package:login_form/reg_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFFF33D0),
          Color(0xFFFF3356),
        ])),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Image(
              image: AssetImage('assets/delivery.png'),
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: Center(
                child: Text('SIGN IN',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => regScreen()));
            },
            child: Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: Center(
                child: Text('SIGN UP',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ),
          ),
          Spacer(),
          Text(
            'Login With another Platform',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage('assets/socail media.png'),
            width: 150,
            height: 150,
          ),
        ]),
      ),
    );
  }
}
