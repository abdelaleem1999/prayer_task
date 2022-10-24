import 'package:flutter/material.dart';

class Intial_Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("please Select a day ,",
        style: TextStyle(
          color: Colors.red,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
