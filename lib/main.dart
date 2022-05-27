// import 'package:f_4_fitness/Train_Section/fab_beginner_model.dart';
import 'package:f_4_fitness/Views/Settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'Views/Excercise/excercise_page.dart';
import 'Views/History/history_page.dart';
import 'Views/Train_Section/TemplateCreation/CreateExerciseTemplate.dart';
import 'Views/Train_Section/train.dart';
import 'Views/UserPage/user_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( ProviderScope(child: MyApp()));

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F4Fitnes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'F4Fitness Prototype',),
      // home: ExerciseTemplateCreation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex = 1;
  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

    
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          UserPage(),
          HistoryPage(),
          Excercisepage(),
          SettingPage(),
          TrainPage(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            setBottomBarIndex(4);
          },
          tooltip: 'Increment',
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Column(
              children: [
                Icon(
                  Icons.add,
                  size: 48,
                  color: Colors.green,
                ),
                Text(
                  'TRAIN',
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          elevation: 2.0,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 7.5,
        child: Container(
          height: height * 0.1,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          setBottomBarIndex(0);
                        },
                        icon: Icon(Icons.person_sharp),
                         color: Colors.green,
                    ),
                    Text("User",style: TextStyle(
                      fontSize: 10,
                    ),),
                  ],
                ),

                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setBottomBarIndex(1);
                      },
                      icon: Icon(Icons.history_sharp),
                      color: Colors.green,
                    ),
                    Text("History",style: TextStyle(
                      fontSize: 10,
                    ),),

                  ],
                ),
                SizedBox.shrink(),

                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setBottomBarIndex(2);
                      },
                      icon: Icon(Icons.pregnant_woman_rounded),
                      color: Colors.green,),

                    Text("Excercise",style: TextStyle(
                      fontSize: 10,
                    ),),
                  ],
                ),

                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setBottomBarIndex(3);
                      },
                      icon: Icon(Icons.settings),
                      color: Colors.green,),
                    Text("Setting",style: TextStyle(
                      fontSize: 10,
                    ),),
                  ],
                ),





















                // CustomIcon(
                //     iconText: 'User',
                //     icon: Icons.person_sharp),
                // CustomIcon(
                //   iconText: 'History',
                //   icon: Icons.history_sharp,
                //   icon_Padding: EdgeInsets.only(right: 30.0),
                // ),
                // CustomIcon(
                //   iconText: 'Exercise',
                //   icon: Icons.pregnant_woman_rounded,
                //   icon_Padding: EdgeInsets.only(left: 30.0),
                // ),
                // CustomIcon(
                //   iconText: 'Settings',
                //   icon: Icons.settings,
                //   icon_Padding: EdgeInsets.only(right: 3.0),
                // ),
              ],
            ),
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
//      BottomNavBar(),
    );
  }
}
