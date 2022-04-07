import 'package:flutter/material.dart';

class ExeciseComponentRow extends StatelessWidget {
  int sets;
  int reps;
  String exercise;
  ExeciseComponentRow({
    required this.exercise,
    required this.reps,
    required this.sets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${sets.toString()} x ',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w200),
        ),
        Text(
          '${reps.toString()} ',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w200),
        ),
        Text(
          exercise.toString(),
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
