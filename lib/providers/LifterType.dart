

import 'package:flutter/cupertino.dart';

class FabVariables extends ChangeNotifier{
  String headingName;
  String exerciseLevel;
  String noOfWorkout;
  GestureTapCallback? onTap;

  FabVariables({
    this.onTap,
    required this.headingName,
    required this.exerciseLevel,
    required this.noOfWorkout,
  });
  
}