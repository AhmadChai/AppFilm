import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.videocam,
          size: 120.0,
          color: Colors.orange,
        ),

      ),
      
    );
  }
}