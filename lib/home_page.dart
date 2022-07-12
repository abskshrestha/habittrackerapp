import 'package:flutter/material.dart';
import 'package:habittrackerapp/util/habit_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Consistency is key'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          HabitTitle(
            HabitName: 'sleeping',
          ),
          HabitTitle(
            HabitName: 'read',
          ),
          HabitTitle(
            HabitName: 'meditate',
          ),
          HabitTitle(
            HabitName: 'code',
          ),
        ],
      ),
    );
  }
}
