import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FullWidthColumn(color: Colors.red),
              MinWidthColumn(),
              FullWidthColumn(color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

class MinWidthColumn extends StatelessWidget {
  const MinWidthColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}

class Square extends StatelessWidget {
  const Square({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 100,
      height: 100,
    );
  }
}

class FullWidthColumn extends StatelessWidget {
  const FullWidthColumn({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: color,
            width: 100,
          ),
        ),
      ],
    );
  }
}
