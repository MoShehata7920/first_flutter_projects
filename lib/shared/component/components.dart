import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:projects/shared/cubit/cubit.dart';

Widget defaultButton({
  double width = double.infinity,
  double radius = 0.0,
  required Color background,
  required Function? function,
  required String text,
}) =>
    Container(
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed: () {
          function!();
        },
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String? Function(String? val)? validate,
  required String label,
  required IconData prefix,
  Function? onTap,
  bool isClickable = true,
  bool isPassword = false,
  IconData? suffix,
  Function? suffixPressed,
  Function(String value)? onFieldSubmitted,
  Function(String value)? onChanged,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: (String value) {
        onFieldSubmitted!(value);
      },
      onChanged: (String value) {
        onChanged!(value);
      },
      onTap: () {
        onTap!();
      },
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
      validator: validate,
    );

Widget buildTaskItem(Map model, context) => Dismissible(
      key: Key(model['id'].toString()),
      child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: Text(
                  '${model['time']}',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${model['title']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${model['date']}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {
                    AppCubit.get(context)
                        .updateData(status: 'done', id: model['id']);
                  },
                  icon: const Icon(
                    Icons.check_box,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {
                    AppCubit.get(context)
                        .updateData(status: 'archive', id: model['id']);
                  },
                  icon: const Icon(
                    Icons.archive,
                    color: Colors.black45,
                  )),
            ],
          )),
      onDismissed: (direction) {
        AppCubit.get(context).deleteData(id: model['id']);
      },
    );

Widget tasksBuilder({
  required List<Map> tasks,
}) =>
    ConditionalBuilder(
      condition: tasks.isNotEmpty,
      builder: (context) => ListView.separated(
        itemBuilder: (context, index) => buildTaskItem(tasks[index], context),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 10,
            color: Colors.grey[300],
          ),
        ),
        itemCount: tasks.length,
      ),
      fallback: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              Icons.menu,
              size: 100.0,
              color: Colors.grey,
            ),
            const Text(
              'No Tasks Yet , Please Add some Tasks ',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            )
          ],
        ),
      ),
    );
