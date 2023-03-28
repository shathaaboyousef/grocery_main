import 'package:flutter/material.dart';
import 'package:grocery_shopping/widgets/MyButton.dart';

class CongratulationScreen extends StatefulWidget {
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  State<CongratulationScreen> createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('images/1.jpg', height: 250, width: 250,),
                ),
                SizedBox(height: 100.0),

                Row(
                  children: [
                    Text('Congratulations!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  ],
                ),
                SizedBox(height: 10.0),
                Text('Your mobile number verified successfull! You can now continue using Grocery Shopping App.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),)
              ],),
            SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Material(
                  elevation: 5,
                  //color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10.0),
                  child: MaterialButton(
                    onPressed:  (){},
                    minWidth: 100,
                    height: 42,
                    child: Text('LATER',
                      style: TextStyle(
                          color: Colors.black45
                      ),
                    ),
                  ),
                ),
                SizedBox(width:50,),
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

          ],),
      ),
    );
  }
}
