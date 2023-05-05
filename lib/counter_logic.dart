import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int number = 0;

  void add() {
    setState(() {
      // stop counting when number = 30
      if (number == 30) {
        number;
      } else {
        number++;
      }
    });
  }

  void sub() {
    setState(() {
      // stop counting negative number when number = 0
      if (number == 0) {
        number;
      } else {
        number--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[30],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: add,
              child: const Text(
                '+',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Text(
              '$number',
              style: const TextStyle(fontSize: 30, color: Colors.black),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: sub,
              child: const Text(
                '-',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
