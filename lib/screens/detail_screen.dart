import 'package:flutter/material.dart';
import '../models/user.dart';

class DetailScreen extends StatelessWidget {
  final User user;

  const DetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.username)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${user.username}', style: TextStyle(fontSize: 18)),
            Text('Email: ${user.email}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
