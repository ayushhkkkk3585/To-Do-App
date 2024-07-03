// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/utilities/dialog_box.dart';
import 'package:todo_app/utilities/todo_tile.dart';






class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  // accessing the text from the button
  final _manipulate= TextEditingController();

  List todoList=[
    ["make tuts",false],
    ["make food",false],

  ];

  //checkbox was tapped
  void checkboxChanged(bool? value, int index){
    setState(() {
      todoList[index][1]=!todoList[index][1];
    });
    
  }

  //save new taskk 
  void saveNewTask(){
    setState(() {
      todoList.add([_manipulate.text,false]);
    });
    Navigator.of(context).pop();
    _manipulate.clear();
  }

  //create new task
  void createNewtask(){
    showDialog(
      context: context, 
      builder: (context) {
        return DialogBox(
          control: _manipulate,
          onSave: saveNewTask,
          onCancel: ()=>Navigator.of(context).pop(),

        );
        
      },
      );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("TO-DO")),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewtask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(

        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskname: todoList[index][0], 
            taskcompleted: todoList[index][1], 
            onChanged: (value) => checkboxChanged(value,index),
            );
        },
        // children: [
        //   TodoTile(
        //     taskname: "make tuts",
        //     taskcompleted: true,
        //     onChanged: (p0) {},
        //   ),
        // ],
      ),
    );
  }
}