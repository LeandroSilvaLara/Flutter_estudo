import 'package:flutter/material.dart';
import 'package:notes/create_note_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
  class _HomePageState extends State<HomePage>{
  var notes = <String>[
    "Primeiro Item"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTES"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          for (var i = 0; i < notes.length; i++)
            Card(
              child: ListTile(
                title: Text(notes[i]),
                onTap: () async{
                  var desciption = await Navigator.pushNamed(context, "/create-note", arguments: notes[i]);
                  if (desciption != null) {
                    notes[i] = desciption as String;
                    setState(() {} );
                  }
                },
              ),
            ),
        ],
      ),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
           var desciption = await Navigator.pushNamed(context, "/create-note");
          if (desciption != null) {
          notes.add(desciption as String);
          setState(() {} );
          }
        },
      ),
    );
    
  }

}