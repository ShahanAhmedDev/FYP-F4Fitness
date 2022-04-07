import 'package:f_4_fitness/model/variable%20declaration.dart';
import 'package:flutter/material.dart';

class HistoryList extends ChangeNotifier{

  List<Variables> exerciseList = [
    Variables(name: 'Exercise Selected Name', gifUrl: '', Subtitle: 'Exercise Selected'),
    Variables(name: 'Exercise Selected Name', gifUrl: '', Subtitle: 'Exercise Selected'),
    Variables(name: 'Exercise Selected Name', gifUrl: '', Subtitle: 'Exercise Selected'),
  ];


  addExercise(Variables exercise) {
    exerciseList.add(exercise);
  }

  removeExercise(Variables exercise){
    exerciseList.remove(exercise);
  }

}