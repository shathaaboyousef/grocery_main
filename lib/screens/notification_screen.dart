import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
              icon: Icon(Icons.close),
            ),
            SizedBox(width: 20, height: 30,),
            Text('Notifications',
              style: TextStyle(
                fontSize: 20,
              ),),
            SizedBox(width: 145),
            IconButton(
              alignment: Alignment.center,
              onPressed: (){
                //add here search function
              },
              icon: Icon(Icons.notifications_sharp),
            ),
          ],
        ),
      ),
      body: listView(),
    );
  }
  Widget listView(){
    return ListView.separated(itemBuilder: (context, index)
    {
      return listViewItem(index);
    },
    separatorBuilder: (context, index){
      return Divider(height: 10,);
    },
    itemCount: 15);
  }

  Widget listViewItem (int index){
    return Container(
      margin: EdgeInsets.only(left: 10),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          preFixIcon(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                message(index),
                timeAndData(index),
              ],
            ),
          ),
        ],
      )
    );
  }

  Widget preFixIcon(){
    return Container(
      height: 100,
      width: 60,
      padding: EdgeInsets.all( 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green[100],
      ),
      child: Icon(Icons.notifications_none, size: 25, color: Colors.green),
    );
  }

  Widget message(int index){
    double textSize = 20;
    return Container(
      child: RichText(
        maxLines: 3,
     //   overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: 'Notification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
  Widget timeAndData (int index){
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'time',
            style: TextStyle(
              color: Colors.green,
              fontSize: 15
            ),
          ),

        ],
      ),
    );
  }
}
