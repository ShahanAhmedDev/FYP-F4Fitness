
import 'package:riverpod/riverpod.dart';



import 'exerciseTemplate/exerciseCard.dart';
import 'exercise_history.dart';

final historyListProvider = FutureProvider<HistoryList>((ref) async {
  return HistoryList();
});
final exerciseCardProvider = FutureProvider<ExerciseList>((ref) async {
  return ExerciseList();
});