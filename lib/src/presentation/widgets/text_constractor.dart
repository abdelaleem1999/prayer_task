import 'package:flutter/material.dart';

class TextConstractor extends StatelessWidget {
  TextConstractor({
    this.prayer_name,
    this.prayer_value
});
 String? prayer_name;
 String? prayer_value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0,right:35,top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              "$prayer_name " ,
              style: TextStyle(
                  color: Color(0xF8010811),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
            ),
          Text(
            "$prayer_value" ,
            style: TextStyle(
                color: Color(0xF8010811),
                fontSize: 15
            ),
          ),


        ],
      ),
    )
    ;
  }
}
