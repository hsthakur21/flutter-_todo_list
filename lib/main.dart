// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todolist_project/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo PrOjEcT',
      theme: ThemeData(
        
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          
          title: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 15,color: Colors.white)
              ]
            ),
            child: Center(child: Text("ToDo LisT",
            style: TextStyle(fontWeight: FontWeight.bold),)
            ),
          ),
          backgroundColor: Colors.redAccent,
          

        ),
        body:Home(),
      )
    );
  }
}


