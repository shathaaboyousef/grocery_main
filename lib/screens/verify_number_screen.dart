import 'package:flutter/material.dart';

class VrifyNumberScreen extends StatefulWidget {
  const VrifyNumberScreen({Key? key}) : super(key: key);

  @override
  State<VrifyNumberScreen> createState() => _VrifyNumberScreenState();
}

class _VrifyNumberScreenState extends State<VrifyNumberScreen> {
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
            Text('Verify Number',
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
          Text('Verify your number',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),

          Text('4 digit code sent to ##',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black38,
            ),
          ),
          SizedBox(height:50),
          TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.start,
            onChanged: (value){
              number = value as int;
            },
            decoration: InputDecoration (
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
              SizedBox(width:5,),
              Material(
                elevation: 5,
                //color: Colors.green[400],
                borderRadius: BorderRadius.circular(10.0),
                child: MaterialButton(
                  onPressed:  (){},
                  minWidth: 100,
                  height: 42,
                  child: Text('Resend',
                    style: TextStyle(
                        color: Colors.black45
                    ),
                  ),
                ),
              ),
              SizedBox(width:200,),
              Material(
                elevation: 5,
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(10.0),
                child: MaterialButton(
                  onPressed:  (){},
                  minWidth: 100,
                  height: 42,
                  child: Text('VERIFY',
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
