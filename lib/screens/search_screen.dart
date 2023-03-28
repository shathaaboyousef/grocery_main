import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Row(
          children: [
            IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),);
              },
                icon: Icon(Icons.search),
            ),
            TextField(
        keyboardType: TextInputType.emailAddress,
        textAlign: TextAlign.start,
        onChanged: (value){
        },
        decoration: InputDecoration (
          hintText: 'Search',
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
      ),
            IconButton(
              onPressed: (){
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),);
              },
              icon: Icon(Icons.microwave),
            ),
            IconButton(
              onPressed: (){
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),);
              },
              icon: Icon(Icons.close),
            ),
    ],
        ),
    ),
    );
  }
}

 class CustomSearchDelegate extends SearchDelegate{
  List <String> searchTerms = [
    'apple', 'banana' ,'pear'
  ];

@override
  List <Widget> buildActions(BuildContext context){
  return [

  ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}

