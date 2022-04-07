import 'package:f_4_fitness/Views/Train_Section/TemplateCreation/exerciseTemplateCreation.dart';
import 'package:f_4_fitness/providers/exerciseTemplate/exerciseCard.dart';
import 'package:f_4_fitness/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'exerciseComponentRow.dart';

class ExerciseTemplate extends HookConsumerWidget {
  ExerciseTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ExerciseTemplateList = ref.watch(exerciseCardProvider).value?.list;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise Template'),
      ),
      body: Container(
        width: width * 1,
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExerciseTemplateCreation()),
                );
              },
              child: Text('Add New Template'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black87),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                itemCount: ExerciseTemplateList!.length,
                separatorBuilder: (BuildContext context, int index) => Spacer(),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        Text(ExerciseTemplateList[index].exerciseTemplateName),
                        Column(children: [
                          ...ExerciseTemplateList[index].listExercise
                        ]),
                      ]),
                    ),
                  );
                  // ExerciseCard(exerciseTemplateName: ExerciseTemplateList[0].exerciseTemplateName, listExercise:  ExerciseTemplateList[0].listExercise);
                }

                //   ExeciseComponentRow(
                //   exercise: ExerciseTemplateList[index].exercise,
                //   sets: ExerciseTemplateList[index].sets,
                //   reps: ExerciseTemplateList[index].reps,
                // )

                // ... ExerciseTemplateList,
                // TextButton(onPressed: (){}, child: Text('Add to history'),),

                ),
          ],
        ),
      ),
    );
  }
}
