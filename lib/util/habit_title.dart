import 'dart:ui';

import 'package:flutter/material.dart';

class HabitTitle extends StatelessWidget {
  final String HabitName;
  final VoidCallback onTap;
  final VoidCallback settingsTapped;
  final int timeSpent;
  final int timeGoal;
  final bool habitSelected;

  HabitTitle({
    required this.HabitName,
    required this.onTap,
    required this.settingsTapped,
    required this.timeSpent,
    required this.timeGoal,
    required this.habitSelected,
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
                GestureDetector(
                  onTap: onTap,
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: CircularProgressIndicator(
                            color: Colors.red,
                            backgroundColor: Colors.grey[300],
                            value: 0.7,
                          ),
                        ),

                        //play button

                        const Center(
                          child: Icon(
                            Icons.play_arrow,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
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
            GestureDetector(
              onTap: settingsTapped, 
              child: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
