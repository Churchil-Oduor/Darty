import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_app/pages/components/dialog_box.dart';
import 'package:to_do_app/pages/components/to_do_tile.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = TextEditingController();

  List my_list = [];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      my_list[index][1] = value;
    });
  }

  void saveNewTask() {
    setState(() {
      my_list.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void deleteTask(int index) {
    setState(() {
      my_list.removeAt(index);
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To Do"), centerTitle: true, elevation: 0),
      backgroundColor: Colors.yellow[200],
      body: ListView.builder(
        itemCount: my_list.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            TaskName: my_list[index][0],
            taskCompleted: my_list[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {createNewTask()},
        child: Icon(Icons.add),
      ),
    );
  }
}
