import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text("Sunny", style: TextStyle(fontSize: 100),),
      ),
    );
  }
}
