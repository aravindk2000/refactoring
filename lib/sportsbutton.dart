import 'package:flutter/material.dart';
Widget sportsbutton({
  required String buttontext,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(onPressed: () {},
      child: Text(buttontext),

    ),
  );
}