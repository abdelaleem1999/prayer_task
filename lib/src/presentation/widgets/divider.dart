import 'package:flutter/material.dart';

class Const_Divider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15),
      child: Divider(
        color: Colors.cyan,
        height: 12,
        thickness: 2,
      ),
    )
    ;
  }
}
