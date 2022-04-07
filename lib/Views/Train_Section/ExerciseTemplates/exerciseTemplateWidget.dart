import 'package:f_4_fitness/constants/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/providers/exerciseTemplate/exerciseCard.dart';
import 'exerciseComponentRow.dart';

class ExerciseTemplate extends HookConsumerWidget {
   ExerciseTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ExerciseTemplateList = ref.watch(exerciseCardProvider).value?.list;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Strong 5x5'),
      ),
      body: Container(
        width: width * 1,
        child: Card(
          elevation: 3,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount:  ExerciseTemplateList?.length,
            itemBuilder: (BuildContext context, int index){
              return
                  Column(

                  );
            }

             // ... ExerciseTemplateList,
              // TextButton(onPressed: (){}, child: Text('Add to history'),),

            ,
          ),
        ),
      ),
    );
  }
}



