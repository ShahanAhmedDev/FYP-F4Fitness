import 'package:f_4_fitness/constants/providers/exerciseTemplate/exerciseCard.dart';
import 'package:riverpod/riverpod.dart';
import 'package:f_4_fitness/constants/providers/exercise_history.dart';

final historyListProvider = FutureProvider<HistoryList>((ref) async {
  return HistoryList();
});
final exerciseCardProvider = FutureProvider<ExerciseCard>((ref) async {
  return ExerciseCard();
});