import 'package:f_4_fitness/providers/exerciseTemplate/exerciseCard.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../providers/providers.dart';
import '../ExerciseTemplates/exerciseComponentRow.dart';


class ExerciseTemplateCreation extends HookConsumerWidget {
  const ExerciseTemplateCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ExerciseTemplateList = ref.read(exerciseCardProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Template'),
      ),
      body: Container(
        width: double.infinity,
        child: Card(child: Column(
          children: [
            Text('Add New Template'),
            TextButton(onPressed: () {
              ExerciseTemplateList.addExerciseCard(
                  ExerciseCard(exerciseTemplateName: 'Conjugate Program',
                      listExercise: [
                        ExeciseComponentRow(
                          sets: 5, reps: 5, exercise: 'Squat',),
                        ExeciseComponentRow(
                          sets: 5, reps: 5, exercise: 'Bench',),
                        ExeciseComponentRow(
                          sets: 5, reps: 5, exercise: 'Bent Over Row',),

                      ]),
                  );
              print('ADDED');
            }, child: Text('Add'))
          ],
        )),
      ),

    );
  }
}
