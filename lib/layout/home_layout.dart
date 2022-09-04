// ignore_for_file: invalid_required_positional_param

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:projects/modules/archieved_tasks/archived_tasks_screen.dart';
import 'package:projects/modules/done_tasks/done_tasks_screen.dart';
import 'package:projects/modules/new_tasks/new_tasks_screen.dart';
import 'package:projects/shared/component/components.dart';
import 'package:projects/shared/cubit/cubit.dart';
import 'package:sqflite/sqflite.dart';

import '../shared/component/constants.dart';
import '../shared/cubit/states.dart';

//1. create database
//2. create tables
//3. open database
//4. insert to database
//5. get from database
//6. update in database
//7. delete from database

// ignore: must_be_immutable
class HomeLayout extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if (state is AppInsertDatabaseState) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: ConditionalBuilder(
              condition: state is! AppGetDatabaseLoadingState,
              // ignore: prefer_const_constructors
              fallback: (BuildContext context) => Center(
                child: const CircularProgressIndicator(),
              ),
              builder: (BuildContext context) =>
                  cubit.Screens[cubit.currentIndex],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                if (cubit.isBottomSheetShown) {
                  if (formKey.currentState!.validate()) {
                    cubit.insertToDatabase(
                        title: titleController.text,
                        time: timeController.text,
                        date: dateController.text);
                    // insertToDatabase(
                    //   title: titleController.text,
                    //   time: timeController.text,
                    //   date: dateController.text,
                    // ).then((value) {
                    //   getDataFromDatabase(database).then((value) {
                    //     Navigator.pop(context);
                    //     // setState(() {
                    //     //   isBottomSheetShown = false ;
                    //     //   fabIcon = Icons.edit ;
                    //     //   tasks = value ;
                    //     //   // ignore: avoid_print
                    //     //   print(tasks) ;
                    //     // });
                    //   });
                    // });
                  }
                } else {
                  scaffoldKey.currentState
                      ?.showBottomSheet(
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
                                      validate: (String? value) {
                                        if (value!.isEmpty) {
                                          return 'title must not be empty';
                                        }
                                        return null;
                                      },
                                      label: 'Task Title',
                                      prefix: Icons.title),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  defaultFormField(
                                      controller: timeController,
                                      type: TextInputType.datetime,
                                      onTap: () {
                                        // ignore: avoid_print
                                        showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        ).then((value) {
                                          timeController.text =
                                              value!.format(context).toString();
                                          // ignore: avoid_print
                                          print(value.format(context));
                                        });
                                      },
                                      validate: (String? value) {
                                        if (value!.isEmpty) {
                                          return 'time must not be empty';
                                        }
                                        return null;
                                      },
                                      label: 'Task Time',
                                      prefix: Icons.watch),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  defaultFormField(
                                      controller: dateController,
                                      type: TextInputType.datetime,
                                      onTap: () {
                                        showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime.now(),
                                                lastDate: DateTime.parse(
                                                    '2022-09-30'))
                                            .then((value) {
                                          // ignore: avoid_print
                                          dateController.text =
                                              DateFormat.yMMMd().format(value!);
                                        });
                                      },
                                      validate: (String? value) {
                                        if (value!.isEmpty) {
                                          return 'time must not be empty';
                                        }
                                        return null;
                                      },
                                      label: 'Task Date',
                                      prefix: Icons.calendar_today),
                                ],
                              ),
                            ),
                          ),
                        ),
                        elevation: 20.0,
                      )
                      .closed
                      .then((value) {
                    cubit.changeBottomSheetState(
                        isShow: false, icon: Icons.edit);
                  });

                  cubit.changeBottomSheetState(isShow: true, icon: Icons.add);
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
                cubit.fabIcon,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeIndex(index);
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
                ]),
          );
        },
      ),
    );
  }

  // Future<String> getName () async
  // {
  //   return 'MO Shehata' ;
  // }

}
