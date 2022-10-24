import 'package:flutter/material.dart';

class TextConstractor extends StatelessWidget {
  TextConstractor({
    this.prayerName,
    this.prayerValue
});
 String? prayerName;
 String? prayerValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0,right:35,top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              "$prayerName " ,
              style: TextStyle(
                  color: Color(0xF8010811),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
            ),
          Text(
            "$prayerValue" ,
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
