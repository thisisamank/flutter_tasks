import 'package:flutter/material.dart';

class PaddedBox extends StatelessWidget {
  PaddedBox(this.title);
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
      margin: EdgeInsets.all(15.00),
      padding: EdgeInsets.all(40.00),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
