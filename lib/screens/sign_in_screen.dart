import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late String email;
  late String password;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sign in to Grocery App',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),

            Text('Enter email & password to continue',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black38,
              ),
            ),
            SizedBox(height: 50),

            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.start,
              onChanged: (value){
                email = value;
              },
              decoration: InputDecoration (
                hintText: 'Email address',
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12,
                        width: 1 ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green[400]!,
                        width: 2 ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              textAlign: TextAlign.start,
              onChanged: (value){
                password = value;
              },
              decoration: InputDecoration (
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12,
                        width: 1 ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green[400]!,
                        width: 2 ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width:5,),
                Material(
                  elevation: 5,
                  //color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10.0),
                  child: MaterialButton(
                    onPressed:  (){},
                    minWidth: 100,
                    height: 42,
                    child: Text('Forgot password?',
                      style: TextStyle(
                          color: Colors.black45
                      ),
                    ),
                  ),
                ),
                SizedBox(width:110,),
                Material(
                  elevation: 5,
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10.0),
                  child: MaterialButton(
                    onPressed:  (){},
                    minWidth: 100,
                    height: 42,
                    child: Text('SIGN IN',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  }

