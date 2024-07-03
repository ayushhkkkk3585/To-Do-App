// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
   TodoTile({
    super.key,
    required this.taskname,
    required this.taskcompleted,
    required this.onChanged,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0,right:25.0,top:25.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            //checkbox
            Checkbox(value: taskcompleted, onChanged: onChanged),

            //Task name
            Text(taskname,
            style: TextStyle(
              decoration: taskcompleted ? TextDecoration.lineThrough:TextDecoration.none),//ternary operator is used when checkbox clicked line will be there on the task 
            ),
          ],
        ),
        decoration: BoxDecoration(color: Colors.tealAccent[400],
        borderRadius: BorderRadius.circular(12)
        ),
        
      ),
    );
  }
}

