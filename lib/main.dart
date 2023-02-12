import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/pages/todo_list_page.dart';

void main() {
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // MaterialApp: widget principal, onde temos traduções, datas e vários outros parâmetros
    debugShowCheckedModeBanner: false,
      home: TodoListPage(), //home: tela inicial
    );
  }
}

