// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Updated extends StatefulWidget {
    const Updated({super.key});

  @override
  State<Updated> createState() => _UpdateState();
}

class _UpdateState extends State<Updated> {
  String value = "";
  update(content) {
    value = content;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(


      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
            child:Column(
              children: [
                TextField(
                  onChanged: (content) {
                      update(content);
                      },
                  decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(
                       Radius.circular(25)
                     )
                   )
                  ),
                ),
                ElevatedButton(onPressed: (){
                 update;
                 Navigator.pop(context);
                }, child:Text("Update"))
              ],
            )
            ),
      )
    );
  }
}
