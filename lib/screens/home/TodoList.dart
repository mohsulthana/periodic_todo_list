import 'package:flutter/material.dart';
import 'package:periodic_todo_list/models/todo.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todos = [
    Todo(title: 'Learn Dart'),
    Todo(title: 'Mengerjakan tugas komber'),
  ];

  _toggleTodo(Todo todo, bool isChecked) {
    print('${todo.title} ${todo.isDone}');
    todo.isDone = isChecked;
  }

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];
    return CheckboxListTile(
      value: todo.isDone,
      onChanged: (bool isChecked) {
        _toggleTodo(todo, isChecked);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}
