import 'package:flutter/material.dart';


class ExerciseTemplateCreation extends StatelessWidget {
  const ExerciseTemplateCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Template'),
      ),
      body: Text('Create a ExerciseTemplate Widget using User Input'),
    );
  }
}
