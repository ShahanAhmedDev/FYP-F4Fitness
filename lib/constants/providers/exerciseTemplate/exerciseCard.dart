import 'package:f_4_fitness/Views/Train_Section/ExerciseTemplates/exerciseComponentRow.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends ChangeNotifier{
   List<ExeciseComponentRow>list =[
      ExeciseComponentRow(sets: 5,reps: 5,exercise: 'Squat',),
      ExeciseComponentRow(sets: 5,reps: 5,exercise: 'Bench',),
      ExeciseComponentRow(sets: 5,reps: 5,exercise: 'Bent Over Row',),
   ];

   addNewExercise({ExerciseComponentRow}){
      list.add(ExerciseComponentRow);
   }

   removeExercise({ExerciseComponentRow}){
      list.removeAt(ExerciseComponentRow);

   }
}