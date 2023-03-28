import 'package:flutter/material.dart';
import 'package:grocery_shopping/widgets/MyButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
              Container(
                child: Image.asset('images/1.jpg', height: 250, width: 250,),
              ),
                SizedBox(height: 30.0),
              Text('Welcome to Grocery shopping',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
                ),)
            ],),
            SizedBox(height: 30.0),
            MyButton(color: Colors.white,
                title: 'SIGN IN',
                onPressed: (){

                }
            ),
            MyButton(color: Colors.white,
                title: 'SIGN UP',
                onPressed: (){

                }
            )
          ],),
      ),
    );
  }
}
