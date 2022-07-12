import 'dart:ui';

import 'package:flutter/material.dart';

class HabitTitle extends StatelessWidget {

  final String HabitName;

  HabitTitle({
    required this.HabitName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey[300],
                  value: 0.7,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      HabitName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 4),
                    Text('2:00 / 10 = 20%'),
                  ],
                ),
              ],
            ),
            Icon(Icons.settings),
          ],
        ),
      ),
    );
  }
}
