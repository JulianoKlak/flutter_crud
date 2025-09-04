import 'package:flutter/material.dart';
import 'data/dummy_users.dart';
import 'views/user_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lista de Usuários"),
        ),
        body: UserList(users: DUMMY_USERS),
      ),
    );
  }
}
