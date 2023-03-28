import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNumber extends StatefulWidget {
  const AddNumber({Key? key}) : super(key: key);

  @override
  State<AddNumber> createState() => _AddNumberState();
}

class _AddNumberState extends State<AddNumber> {
   late int number;
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
            Text('Add Number',
            style: TextStyle(
              fontSize: 20,
            ),),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height:30,),
          Text('What is your number',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),

          Text('Enter mobile number to continue',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black38,
            ),
          ),
          SizedBox(height:50),
          TextField(
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.start,
            onChanged: (value){
              number = value as int;
            },
            decoration: InputDecoration (
              hintText: 'your mobile number',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Container(),
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
