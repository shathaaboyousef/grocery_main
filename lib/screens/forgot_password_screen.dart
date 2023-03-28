import 'package:flutter/material.dart';
import 'package:grocery_shopping/screens/congratulation_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late String newPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Row(
          children: [
            IconButton(
              onPressed: (){
                //add here back function
              },
              icon: Icon(Icons.arrow_back),
            ),
            SizedBox(width: 20),
            Text('Forgot password',
              style: TextStyle(
                fontSize: 20,
              ),),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:30,),
          Text('Password Reset',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),

          Text('Enter email address to send reset code',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black38,
            ),
          ),
          SizedBox(height:50),
          TextField(

            textAlign: TextAlign.start,
            onChanged: (value){
              newPassword = value;
            },
            decoration: InputDecoration (
              hintText: 'Email address',
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
          SizedBox(height:30,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 300,),
              Material(
                elevation: 5,
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(10.0),
                child: MaterialButton(
                  onPressed:  (){},
                  minWidth: 100,
                  height: 42,
                  child: Text('SEND',
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

    );

  }
}
