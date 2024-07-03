// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';


class DialogBox extends StatelessWidget {
  final control;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key, required this.control,required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          children: [

            //get user input
            TextField(
              controller: control,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter task",
                
                ),
            ),

            //buttons --> save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save button 
                MyButton(text: "Save", buttonPressed:onSave),
                const SizedBox(width: 8,),
                



                //cancel button 
                MyButton(text: "Cancel", buttonPressed:onCancel),
              ],
            )


          ],
          
          
        ),
      ),
    );
  }
}