import 'package:flutter/material.dart';
import 'package:projects/shared/component/components.dart';

import '../../shared/component/constants.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context , index) => buildTaskItem(tasks[index]) ,
        separatorBuilder:
            (context , index) => Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20.0 ,
                ) ,
              child: Container(
                width: double.infinity,
                height: 10 ,
                color: Colors.grey[300],
              ),
            ),
        itemCount: tasks.length,
    );
  }
}
