// ignore_for_file: invalid_required_positional_param

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projects/modules/archieved_tasks/archived_tasks_screen.dart';
import 'package:projects/modules/done_tasks/done_tasks_screen.dart';
import 'package:projects/modules/new_tasks/new_tasks_screen.dart';
import 'package:projects/shared/component/components.dart';
import 'package:sqflite/sqflite.dart';

//1. create database
//2. create tables
//3. open database
//4. insert to database
//5. get from database
//6. update in database
//7. delete from database

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0 ;
  // ignore: non_constant_identifier_names
  List<Widget> Screens = [
    const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchivedTasksScreen(),
  ];
  List <String> titles = [
    'New Tasks',
    'Done Tasks' ,
    'Archived Tasks' ,
  ] ;

  // ignore: prefer_typing_uninitialized_variables
  late Database database ;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShown = false ;
  IconData fabIcon = Icons.edit ;
  var titleController = TextEditingController() ;
  var timeController = TextEditingController() ;
  var dateController = TextEditingController() ;



  @override
  void initState() {
    super.initState();

    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      body: Screens[currentIndex] ,
      floatingActionButton: FloatingActionButton(
          onPressed: () async
          {
            if (isBottomSheetShown)
            {
              if (formKey.currentState!.validate())
              {
                insertToDatabase(
                  title : titleController.text ,
                  time : timeController.text ,
                  date : dateController.text ,
                ).then((value) {
                  Navigator.pop(context) ;
                  isBottomSheetShown = false ;
                  setState(() {
                    fabIcon = Icons.edit ;
                  });
                }) ;

              }

            } else
            {
              scaffoldKey.currentState?.showBottomSheet(
                      (context) => Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defaultFormField(
                                    controller: titleController,
                                    type: TextInputType.text,
                                    validate: (String? value)
                                    {
                                      if (value!.isEmpty)
                                        {
                                          return 'title must not be empty' ;
                                        }
                                      return null ;
                                    },
                                    label: 'Task Title',
                                    prefix: Icons.title
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                defaultFormField(
                                    controller: timeController,
                                    type: TextInputType.datetime,
                                    onTap: (){
                                      // ignore: avoid_print
                                      showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                      ).then((value) {
                                        timeController.text = value!.format(context).toString() ;
                                        // ignore: avoid_print
                                        print(value.format(context));
                                      });
                                    } ,
                                    validate: (String? value)
                                    {
                                      if (value!.isEmpty)
                                      {
                                        return 'time must not be empty' ;
                                      }
                                      return null ;
                                    },
                                    label: 'Task Time',
                                    prefix: Icons.watch
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                defaultFormField(
                                    controller: dateController,
                                    type: TextInputType.datetime,

                                    onTap: (){
                                      showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.parse('2022-09-30')
                                      ).then((value) {
                                        // ignore: avoid_print
                                        dateController.text = DateFormat.yMMMd().format(value!) ;
                                      } );
                                    } ,
                                    validate: (String? value)
                                    {
                                      if (value!.isEmpty)
                                      {
                                        return 'time must not be empty' ;
                                      }
                                      return null ;
                                    },
                                    label: 'Task Date',
                                    prefix: Icons.calendar_today
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                elevation: 20.0 ,
              ) ;
              isBottomSheetShown = true ;
              setState(() {
                fabIcon = Icons.add ;
              });
            }


            //the lines below were before data
            // // try{
            // //   var name = await getName() ;
            // //   // ignore: avoid_print
            // //   print (name);
            // //
            // //   throw('some error');
            // // }catch(error){
            // //   // ignore: avoid_print
            // //   print('error ${error.toString()}');
            // // }
            //
            // getName().then((value) {
            //   // ignore: avoid_print
            //   print(value);
            //   // ignore: avoid_print
            //   print('Mo');
            //   throw('some error!!!!!');
            // }).catchError((error){
            //   // ignore: avoid_print
            //   print('error is ${error.toString()}');
            // });

          },
        child: Icon(
          fabIcon ,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index){
          setState(() {
            currentIndex = index ;
          });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.check_circle_outline,
                ),
              label: 'Done',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.archive_outlined,
                ),
              label: 'Archived',
            ),
          ]
      ),
    );
  }

  Future<String> getName () async
  {
    return 'MO Shehata' ;
  }

  void createDatabase() async
  {
    // ignore: unused_local_variable
    database = await openDatabase(
      'todo.db',
      version: 1,

      onCreate: (database,version)
      {
        //id integer , title string , data string , time string , status string
        // ignore: avoid_print
        print('database created');
        database.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY , title TEXT , date TEXT , time TEXT , status TEXT )').then((value) =>
        {
          // ignore: avoid_print
          print('table created')
        }).catchError((error){
          // ignore: avoid_print
          print('Error WHEN CREATING Table ${error.toString()}');
        });
      },

      onOpen: (database)
        {
          // ignore: avoid_print
          print('database opened');
        },
    );
  }

  Future insertToDatabase({
    required String title ,
    required String time ,
    required String date ,
}) async
  {
    return await database.transaction((txn)
    async {
      txn.rawInsert('INSERT INTO tasks(title , date , time , status) VALUES("$title" , "$time" , "$date" , "fine")')
          .then((value) {
            // ignore: avoid_print
            print('$value inserted successfully' );
      }).catchError( (error) {
        // ignore: avoid_print
        print('Error WHEN INSERTING New Record ${error.toString()}');
      } ) ;
    }
    ) ;
  }
}
