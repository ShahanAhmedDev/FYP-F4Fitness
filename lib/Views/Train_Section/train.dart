// import 'package:f_4_fitness/Train_Section/int_beg_adv_detailpage.dart';
import 'package:f_4_fitness/providers/LifterType.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'ExerciseTemplates/exerciseComponentRow.dart';
import 'ExerciseTemplates/exerciseTemplateWidget.dart';
// import 'package:f_4_fitness/Train_Section/fab_variables.dart';

class TrainPage extends StatefulWidget {
  @override
  _TrainPageState createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPage> {
  List<FabVariables> template = [
    FabVariables(
      headingName: 'assets/Abs.png',
      exerciseLevel: "Beginner",
      noOfWorkout: 'No of workouts 5',
    ),
    FabVariables(
      headingName: 'assets/Back.png',
      exerciseLevel: 'Intermidiate',
      noOfWorkout: 'No of workouts 5',
    ),
    FabVariables(
      headingName: 'assets/Bicep.png',
      exerciseLevel: 'Advance',
      noOfWorkout: 'No of workouts 5',
    ),
    FabVariables(
      headingName: 'assets/Chest.png.png',
      exerciseLevel: 'Cardio',
      noOfWorkout: 'No of workouts 5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: template.length,
        itemBuilder: (context, index) {
          FabVariables newtemplate = template[index];

          return Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 15, bottom: 15, right: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExerciseTemplate()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                newtemplate.exerciseLevel,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2),
                              ),
                              Text(newtemplate.noOfWorkout),
                            ],
                          ),
                          // Text(newtemplate.ex1, style: TextStyle(fontSize: 25,
                          //     fontWeight: FontWeight.bold,
                          //     fontStyle: FontStyle.italic,
                          //     letterSpacing: 2),),
                          CircleAvatar(
                            child: Image(
                              image: AssetImage(newtemplate.headingName),
                              fit: BoxFit.fill,
                            ),
                            radius: 70,
                            backgroundColor: Colors.white,
                          ),
                          // Text(newtemplate.ex1, style: TextStyle(fontSize: 25,
                          //     fontWeight: FontWeight.bold,
                          //     fontStyle: FontStyle.italic,
                          //     letterSpacing: 2),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



