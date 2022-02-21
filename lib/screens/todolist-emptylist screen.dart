import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joovlin_todolist/screens/add_task_screen.dart';

class Todolist_screen extends StatefulWidget {
  @override
  State<Todolist_screen> createState() => _Todolist_screenState();
}

class _Todolist_screenState extends State<Todolist_screen> {
bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        backgroundColor: Color.fromRGBO(116, 45, 221, 1),
        title: Text('Todo List',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          // fontFamily: 'Circular',
        ),),
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Todo List is empty',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(0, 0, 0, 1)
              ),
            ),
            SizedBox(height: 8,),
            Text('Create a task',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(119, 119, 119, 1)
              ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(116, 45, 221, 1),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => AddTaskScreen(),));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
// class EmptytodoList extends StatelessWidget {
//   const EmptytodoList({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  Center(
//       child:  Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Todo List is empty',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w400,
//               fontFamily: 'Poppins',
//               color: Color.fromRGBO(0, 0, 0, 1)
//             ),
//           ),
//           SizedBox(height: 8,),
//           Text('Create a task',
//             style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w400,
//                 color: Color.fromRGBO(119, 119, 119, 1)
//             ),)
//         ],
//       ),
//     );
//   }
// }
// class ToDoList extends StatelessWidget {
//   const ToDoList({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// ListView(
// children: [
// // ListTile(
// //   leading: CircleAvatar(
// //     backgroundColor: Color.fromRGBO(255, 249, 231, 1),
// //     child: Text('1',
// //     style: TextStyle(
// //       fontWeight: FontWeight.w400,
// //       fontSize: 14,
// //       color: Color.fromRGBO(237, 178, 0, 1)
// //     ),),
// //   ),
// // )
// ],
// );
