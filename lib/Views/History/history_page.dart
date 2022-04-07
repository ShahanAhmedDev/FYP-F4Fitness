// import 'package:f_4_fitness/Train_Section/fab_Intermidiate_model.dart';
// import 'package:f_4_fitness/Train_Section/fab_beginner_model.dart';

import 'package:f_4_fitness/constants/providers/exercise_history.dart';
import 'package:f_4_fitness/model/variable%20declaration.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/providers/providers.dart';
class HistoryPage extends HookConsumerWidget {
 // final BeginnersModel beginnersModel;

  //HistoryPage(this.beginnersModel);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final  list = ref.watch(historyListProvider);
    final lists = list.value?.exerciseList;
      body: SafeArea(
        child: Column(
          children: [
            Text("Welcome"),
          return Scaffold(
            Text("this is history page"),
            ListView.builder(
              shrinkWrap: true,
                itemCount:  lists?.length,
                itemBuilder: (BuildContext context, int index)
                {
                  return
              ListTile(
                title: Text(lists![index].name),
                subtitle: Text(lists[index].Subtitle),
              );
            })
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