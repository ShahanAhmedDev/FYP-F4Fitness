
import 'package:f_4_fitness/model/variable%20declaration.dart';
import 'package:riverpod/riverpod.dart';
import 'exerciseTemplate/exerciseCard.dart';
import 'exercise_history.dart';

// final historyListProvider =  StateProvider<List<HistoryList>>((ref) async {
//   return HistoryList();
// });
// final exerciseCardProvider = FutureProvider<ExerciseList>((ref) async {
//   return ExerciseList();
// });

final exerciseCardProvider = StateNotifierProvider<ExerciseListNotifier,List<ExerciseCard>>((ref){
  return ExerciseListNotifier();
});

final currentExerciseCard = Provider<ExerciseCard>((ref) => throw UnimplementedError());