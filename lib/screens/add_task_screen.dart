import 'package:flutter/material.dart';
import 'package:joovlin_todolist/widgets/buttons/buttons.dart';
import 'package:joovlin_todolist/widgets/text_field.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        title: Text('Create Task',style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),),
        backgroundColor: Color.fromRGBO(116, 45, 221, 1),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 19),
            child: Row(
              children: [
                Text('Title',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 1)
                ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: JoovlinTextField(hintText: 'What do you want to do?'),
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 19),
            child: Row(
              children: [
                Text('Description',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 1)
                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: JoovlinTextFieldd(hintText: 'Describe your task',),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: JoovlinFilledButton(text: 'Save',onPressed: (){},),
          )
        ],
      ),
    );
  }
}
