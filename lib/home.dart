// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todolist_project/updaion.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List todolist = [];
  String value = "";
  addstring(content) {
    value = content;
    setState(() {});
  }

  addlist() {
    todolist.add({"value":value});
  }
  deletelist(index){
     todolist.removeAt(index);
     setState(() {

     });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
              children: [
        Expanded(
            flex: 90,
            child: Container(
                 decoration: BoxDecoration(
                   border: Border(
                     bottom:BorderSide(
                       color: Colors.red,width: 5
                     ),
                   ),
                 borderRadius: BorderRadius.circular(25),
                 image:DecorationImage(
                 image: AssetImage("assets/images/back_todo.jpg"),
                  fit: BoxFit.cover,
                 )
                 ),
              child: ListView.builder(
                  itemCount: todolist.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.grey,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 90,
                              child: InkWell(
                                child: Text(todolist[index]['value'].toString(),
                                style: TextStyle(fontSize: 25,color: Colors.black),),
                                onTap: (){
                                  Navigator.push(context,   MaterialPageRoute(builder: (context){
                                    return Updated();
                                  }));
                                    },

                              )
                          ),
                          Expanded(
                            flex: 10,
                            child: TextButton(onPressed:(){
                                   deletelist(index);
                            }, child: Icon(Icons.remove)),

                          )
                        ],
                      ),
                    );
                    
                  }),
            )
        ),
        Expanded(
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    flex: 70,
                    child: TextField(
                      onChanged: (content) {
                        addstring(content);
                      },
                      decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        labelText: "Enter Todo",

                      ),
                    )),
                Expanded(
                    flex: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.green
                        ),
                          onPressed: () {
                            addlist();

                          },
                          child: Text("Add")),
                    )),
              ],
            ),
          ),
        )
              ],
            ),
    backgroundColor:Colors.redAccent);
  }
}
