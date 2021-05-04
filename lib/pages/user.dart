import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.verified_user,
          size: 120.0,
          color: Colors.purple,
        ),
      ),
      
    );
  }
}