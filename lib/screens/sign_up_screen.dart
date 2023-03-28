import 'package:flutter/material.dart';
import 'package:grocery_shopping/widgets/MyButton.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  late String user;
  late String email;
  late String password;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome to Grocery App',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
              Text('Let is get started',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black38,
                ),
              ),
              Container(
                height: 180,
                child: Image.asset('images/1.jpg'),
              ),
              SizedBox(height: 50),
              TextField(
                textAlign: TextAlign.start,
                onChanged: (value){
                  user = value;
                },
                decoration: InputDecoration (
                  hintText: 'Username',
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
              Material(
                elevation: 5,
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(10.0),
                child: MaterialButton(
                  onPressed: (){},
                  minWidth: 200,
                  height: 42,
                  child: Text('SIGN UP',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
