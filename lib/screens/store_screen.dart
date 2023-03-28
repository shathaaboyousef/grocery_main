import 'package:flutter/material.dart';
import 'search_screen.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
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
              icon: Icon(Icons.list_sharp),
            ),
            //SizedBox(width: 20),
            Text('store',
              style: TextStyle(
                fontSize: 20,
              ),),
            IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                );
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){
                //add here search function
              },
              icon: Icon(Icons.notifications_none),
            ),
          ],
        ),
      ),
    );
  }
}

