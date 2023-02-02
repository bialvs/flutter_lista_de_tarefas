import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final TextEditingController todoController = TextEditingController();

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: todoController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa',
                        hintText: 'Ex. Estudar Flutter',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      String text = todoController.text;
                      setState(() {
                        todos.add(text);
                      });
                      todoController.clear();
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffEEA317),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    )
                  )
                ],
              ),
              SizedBox(height: 16,),
              ListView(
                shrinkWrap: true,
                children: [
                  for (String todo in todos)
                    ListTile(
                      title: Text(todo),
                      subtitle: Text('02/02/2023'),
                      onTap: () {
                        print('tarefa:  $todo');
                      },
                    )                               
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: Text('Você tem tarefas pendentes',
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffEEA317),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Text('Limpar tudo'))
                ],
              )
            ],
          ),
        )
      ,),
    );
  }
}