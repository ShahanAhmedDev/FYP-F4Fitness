// import 'package:f_4_fitness/Train_Section/fab_Intermidiate_model.dart';
// import 'package:f_4_fitness/Train_Section/fab_beginner_model.dart';

import 'package:f_4_fitness/Views/Train_Section/ExerciseTemplates/exerciseComponentRow.dart';
import 'package:f_4_fitness/model/variable%20declaration.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/providers.dart';

class HistoryPage extends HookConsumerWidget {
  // final BeginnersModel beginnersModel;

  //HistoryPage(this.beginnersModel);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final ExerciseTemplateList = ref.watch(exerciseCardProvider);
    if(ExerciseTemplateList == null){
      return Text('It seems that the List is empty.');
    }
    else {
      final ExerciseTemplateList = ref
          .watch(exerciseCardProvider);
      // final lists = list.value?.list;
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text("Welcome"),

              // Text("this is history page"),
              ListView.separated(
                  shrinkWrap: true,
                  itemCount: ExerciseTemplateList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children: [
                          Text(
                              ExerciseTemplateList[index]
                                  .exerciseTemplateName),
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

              )
              // Text(beginnersModel.bex1),
              // Text(beginnersModel.bex2),
              // Text(beginnersModel.bex3),
              // Text(beginnersModel.bex4),
              // Text(beginnersModel.bex5),
            ],
          ),
        ),
      );
    }
  }
}
