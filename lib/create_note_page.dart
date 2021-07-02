
import 'package:flutter/material.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage>{
  var description = "";
  var textController = TextEditingController();
  var isEdite = false;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
    if (ModalRoute.of(context)!.settings.arguments !=null) {
      description = ModalRoute.of(context)!.settings.arguments as String;
      textController.text = description;
      isEdite = true;
      setState(() {

      });
    }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( isEdite ? "Edit Note" : "Create Note"),
        centerTitle: true,
        actions: [
          if(isEdite)
          IconButton(icon: Icon(Icons.delete), onPressed: () {},
        ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: textController,
                maxLines: null,
                onChanged: (value) {
                  description = value;
                  setState(() {

                  });
                },
          ),
          if (description.isNotEmpty)
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, description);
                },
                 child: Text("Salvar") )
            ],
          ),
      ));
  }
}