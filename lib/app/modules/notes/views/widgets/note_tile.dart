import 'package:flutter/material.dart';
import 'dart:math';

import '../../note_model.dart';

class NoteTile extends StatelessWidget {
  final Note note;

  NoteTile({this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: getColor(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Feb 11, 1990',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Color getColor() {
  Random random = Random();

  return Color.fromARGB(
      255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}
