import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
  class _HomePageState extends State<HomePage>{
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTES"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          for (var i = 0; i < count; i++)
          Card(
            child: ListTile(
              title: Text("Minha primeira nota"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          count++;
          setState(() {

          });
        },
      ),
    );
    
  }

}