import 'package:flutter/material.dart';
import '../models/user.dart';

class UserList extends StatelessWidget {
  final List<User> users;

  const UserList({required this.users, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (ctx, i) => ListTile(
        title: Text(users[i].name),
        subtitle: Text(users[i].email),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(users[i].avatarUrl),
        ),
      ),
    );
  }
}
