import 'package:f_4_fitness/Views/Train_Section/TemplateCreation/CreateExerciseTemplate.dart';
import 'package:f_4_fitness/providers/exerciseTemplate/exerciseCard.dart';
import 'package:f_4_fitness/providers/providers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'exerciseComponentRow.dart';

class ExerciseTemplate extends HookConsumerWidget {
  ExerciseTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addExerciseCardKey = UniqueKey();
    final ExerciseTemplateList = ref.watch(exerciseCardProvider);
    final exerciseController = useTextEditingController();
    final ExeciseComponentRowController = useTextEditingController();
    // final addExercise = ref.watch(exerciseCardProvider.notifier);
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise Template'),
      ),
      body: Column(
        children: [

          TextButton(
            onPressed: () {
              // ref.read(exerciseCardProvider.notifier).addExerciseCard(ExerciseCard(exerciseTemplateName: 'Conjugate Program', listExercise: [
              //   ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Squat',),
              //   ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bench',),
              //   ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bent Over Row',),
              // ]),);
              // showCustomDialog(context, ref, exerciseController, ExeciseComponentRowController, addExerciseCardKey);
              //   ref.read(exerciseCardProvider.notifier).addExerciseCard(
              //       ExerciseCard(exerciseTemplateName: 'Conjugate Program',
              //       listExercise: [
              //         ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Squat',),
              //         ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bench',),
              //         ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bent Over Row',)
              //
              //       ],
              //         // id: 'work',
              //       ),
              //   );
              // print('ADDED');
              // ref.read(exerciseCardProvider).add(ExerciseCard(
              //   // id: ,
              //     exerciseTemplateName: 'shitty',
              //     listExercise: [
              //       ExeciseComponentRow(
              //         sets: 5,
              //         reps: 5,
              //         exercise: 'Squat',
              //       ),
              //       ExeciseComponentRow(
              //         sets: 5,
              //         reps: 5,
              //         exercise: 'Bench',
              //       ),
              //       ExeciseComponentRow(
              //         sets: 5,
              //         reps: 5,
              //         exercise: 'Bent Over Row',
              //       ),
              //     ]));
              // print('ADDED');
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExerciseTemplateCreation()),
              );
            },
            child: Text('Add New Template'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
            ),
          ),
          for (var i = 0; i < ExerciseTemplateList.length; i++) ...[
            Dismissible(
              // key: ValueKey(ExerciseTemplateList[i].exerciseTemplateName),
                onDismissed: (_) {
                  ref.read(exerciseCardProvider).remove(ExerciseTemplateList[i]);
                },
                key: ValueKey(ExerciseTemplateList[i].exerciseTemplateName),
                child: ProviderScope(
                  overrides: [
                    currentExerciseCard
                        .overrideWithValue(ExerciseTemplateList[i])
                  ],
                  // child: Text('edit'),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        Text(ExerciseTemplateList[i].exerciseTemplateName),
                        Column(children: [
                          ...ExerciseTemplateList[i].listExercise
                        ]),
                      ]),
                    ),
                  ),
                )),
          ]
          // ListView.separated(
          //   addAutomaticKeepAlives: true,
          //     shrinkWrap: true,
          //     itemCount: ExerciseTemplateList.length,
          //     separatorBuilder: (BuildContext context, int index) => Divider(),
          //     itemBuilder: (BuildContext context, int index) {
          //       return Card(
          //         child: Padding(
          //           padding: const EdgeInsets.all(16.0),
          //           child: Column(children: [
          //             Text(ExerciseTemplateList[index].exerciseTemplateName),
          //             Column(children: [
          //               ...ExerciseTemplateList[index].listExercise
          //             ]),
          //           ]),
          //         ),
          //       );
          //       // ExerciseCard(exerciseTemplateName: ExerciseTemplateList[0].exerciseTemplateName, listExercise:  ExerciseTemplateList[0].listExercise);
          //     }
          //
          //     //   ExeciseComponentRow(
          //     //   exercise: ExerciseTemplateList[index].exercise,
          //     //   sets: ExerciseTemplateList[index].sets,
          //     //   reps: ExerciseTemplateList[index].reps,
          //     // )
          //
          //     // ... ExerciseTemplateList,
          //     // TextButton(onPressed: (){}, child: Text('Add to history'),),
          //
          //     ),
        ],
      ),
    );
  }


  // void showCustomDialog(BuildContext context, WidgetRef ref,TextEditingController exerciseController,TextEditingController ExeciseComponentRowController,Key addExerciseCardKey) {
  //   showGeneralDialog(
  //     context: context,
  //     barrierLabel: "Barrier",
  //     barrierDismissible: true,
  //     barrierColor: Colors.black.withOpacity(0.5),
  //     transitionDuration: Duration(milliseconds: 700),
  //     pageBuilder: (_, __, ___) {
  //       return Material(
  //         child: Center(
  //           child: Container(
  //             height: 240,
  //             child: Column(
  //               key: addExerciseCardKey,
  //               children: [
  //                 TextFormField(
  //                   decoration: InputDecoration(labelText: 'Exercise Name'),
  //                   controller: exerciseController,
  //                 ),
  //                 TextFormField(
  //                   decoration: InputDecoration(labelText: 'Exercise sets'),
  //                   controller: ExeciseComponentRowController,
  //                 ),
  //                 TextButton(onPressed: () {
  //                   ref.read(exerciseCardProvider).add(ExerciseCard(
  //                     // id: ,
  //                       exerciseTemplateName: exerciseController.text,
  //                       listExercise: [
  //                         ExeciseComponentRow(
  //                           sets: 2,
  //                           reps: 2,
  //                           exercise: ExeciseComponentRowController.text,
  //                         ),
  //                         // ExeciseComponentRow(
  //                         //   sets: 5,
  //                         //   reps: 5,
  //                         //   exercise: 'Bench',
  //                         // ),
  //                         // ExeciseComponentRow(
  //                         //   sets: 5,
  //                         //   reps: 5,
  //                         //   exercise: 'Bent Over Row',
  //                         // ),
  //                       ]));
  //
  //                 }, child: TextButton(onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: Text('Save'),),
  //                 )
  //               ],
  //             ),
  //             margin: EdgeInsets.symmetric(horizontal: 20),
  //             decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
  //           ),
  //         ),
  //       );
  //     },
  //     transitionBuilder: (_, anim, __, child) {
  //       Tween<Offset> tween;
  //       if (anim.status == AnimationStatus.reverse) {
  //         tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
  //       } else {
  //         tween = Tween(begin: Offset(1, 0), end: Offset.zero);
  //       }
  //
  //       return SlideTransition(
  //         position: tween.animate(anim),
  //         child: FadeTransition(
  //           opacity: anim,
  //           child: child,
  //         ),
  //       );
  //     },
  //   );
  // }

}

// ListView.separated(
// addAutomaticKeepAlives: true,
// shrinkWrap: true,
// itemCount: ExerciseTemplateList.length,
// separatorBuilder: (BuildContext context, int index) => Divider(),
// itemBuilder: (BuildContext context, int index) {
// return Card(
// child: Padding(
// padding: const EdgeInsets.all(16.0),
// child: Column(children: [
// Text(ExerciseTemplateList[index].exerciseTemplateName),
// Column(children: [
// ...ExerciseTemplateList[index].listExercise
// ]),
// ]),
// ),
// );
// // ExerciseCard(exerciseTemplateName: ExerciseTemplateList[0].exerciseTemplateName, listExercise:  ExerciseTemplateList[0].listExercise);
// }
//
// //   ExeciseComponentRow(
// //   exercise: ExerciseTemplateList[index].exercise,
// //   sets: ExerciseTemplateList[index].sets,
// //   reps: ExerciseTemplateList[index].reps,
// // )
//
// // ... ExerciseTemplateList,
// // TextButton(onPressed: (){}, child: Text('Add to history'),),
//
// ),
