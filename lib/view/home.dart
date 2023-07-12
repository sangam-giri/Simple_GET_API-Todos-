import 'package:flutter/material.dart';
import 'package:simple_get_api/controller/api/api.dart';
import 'package:simple_get_api/model/todos_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TodoModel> todo = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    getTodos().then((value) {
      setState(() {
        todo = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: todo.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(todo[index].title),
                    Text(todo[index].completed.toString()),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
