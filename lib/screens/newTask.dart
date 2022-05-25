import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/TaskData.dart';
import 'package:todoey/Widgets/Tasks.dart';

class newTask extends StatelessWidget {
  String? entered;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: Color(0xff757575),
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              children: [
                Text(
                  "Add Task",
                  style: TextStyle(color: Colors.lightBlue, fontSize: 30),
                ),
                TextField(
                  onChanged: (value) {
                    entered = value;
                    print(entered);
                  },
                  autofocus: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.lightBlue, width: 3)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.lightBlue, width: 3))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Provider.of<TaskData>(context, listen: false)
                            .add(entered!);
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Add",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlue)),
                    ),
                  ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        ));
  }
}
