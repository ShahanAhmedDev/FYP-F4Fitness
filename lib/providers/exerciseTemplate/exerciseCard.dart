import 'package:f_4_fitness/Views/Train_Section/ExerciseTemplates/exerciseComponentRow.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class ExerciseList extends ChangeNotifier {
//   List<ExerciseCard> list = [
//     ExerciseCard(exerciseTemplateName: 'Strong 5 x 5', listExercise: [
//       ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Squat',),
//       ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bench',),
//       ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bent Over Row',),
//     ],),
//     ExerciseCard(exerciseTemplateName: 'Strong 5 x 5', listExercise: [
//       ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Squat',),
//       ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bench',),
//       ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bent Over Row',),
//     ],),
//
//   ];
//
//   get length{
//     return list.length;
//   }
//
//   // addNewExercise({ExerciseComponentRow}) {
//   //   list.add(ExerciseComponentRow);
//   //   notifyListeners();
//   // }
//   //
//   // removeExercise({ExerciseComponentRow}) {
//   //   list.removeAt(ExerciseComponentRow);
//   //   notifyListeners();
//   // }
// }

class ExerciseListNotifier extends StateNotifier<List<ExerciseCard>> {

  ExerciseListNotifier() : super([]);

  void addExerciseCard(ExerciseCard card){
    state = [... state, card];
  }

  void removeExerciseCard(ExerciseCard card){
    state =
    [  for (final oldCard in state)
      if(oldCard.exerciseTemplateName != card.exerciseTemplateName) card,
    ];
  }


  List<ExerciseCard> state = [
    ExerciseCard(exerciseTemplateName: 'Strong 5 x 5', listExercise: [
      ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Squat',),
      ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bench',),
      ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bent Over Row',),
    ],),
    ExerciseCard(exerciseTemplateName: 'Strong 5 x 5', listExercise: [
      ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Squat',),
      ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bench',),
      ExeciseComponentRow(sets: 5, reps: 5, exercise: 'Bent Over Row',),
    ],),

  ];


  get length{
    return state.length;
  }

// addNewExercise({ExerciseComponentRow}) {
//   list.add(ExerciseComponentRow);
//   notifyListeners();
// }
//
// removeExercise({ExerciseComponentRow}) {
//   list.removeAt(ExerciseComponentRow);
//   notifyListeners();
// }
}

class ExerciseCard extends StatelessWidget {
  String exerciseTemplateName;
  List<ExeciseComponentRow> listExercise;
  ExerciseCard({required this.exerciseTemplateName,
    required this.listExercise,}
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(exerciseTemplateName),
          ],
        ),
        Row(
          children: [
            Text(listExercise[0].toString()),
          ],
        ),
        Row(
          children: [
            Text(listExercise[1].toString()),
          ],
        ),
        Row(
          children: [
            Text(listExercise[2].toString()),
          ],
        ),
      ],
    );
  }
}


// class ExerciseCard extends StatelessWidget {
//   const ExerciseCard({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//        children: [
//
//        ],
//     );
//   }
// }
