import 'package:flutter/material.dart';
import 'package:tetris_app/pixel.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  int rowLength = 10;
  int colLength = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 173, 134),
      body: GridView.builder(
        itemCount: rowLength * colLength,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: rowLength),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 135, 147, 113),
              borderRadius: BorderRadius.circular(2)),
          margin: EdgeInsets.all(1),
        ),
      ),
    );
  }
}
