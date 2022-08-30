import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';





// ignore: must_be_immutable
class UsersScreen extends StatelessWidget {
  List<UserModel> users= [
    UserModel(
      id: 1 ,
      name: 'Mohamed Shehata' ,
      phone: '+201112268819'
    ),
    UserModel(
        id: 2 ,
        name: 'Ziad Shehata' ,
        phone: '+201113341123'
    ),
    UserModel(
        id: 3 ,
        name: 'Ahmed Shehata' ,
        phone: '+201113364569'
    ),
    UserModel(
        id: 1 ,
        name: 'Mohamed Shehata' ,
        phone: '+201112268819'
    ),
    UserModel(
        id: 2 ,
        name: 'Ziad Shehata' ,
        phone: '+201113341123'
    ),
    UserModel(
        id: 3 ,
        name: 'Ahmed Shehata' ,
        phone: '+201113364569'
    ),
    UserModel(
        id: 1 ,
        name: 'Mohamed Shehata' ,
        phone: '+201112268819'
    ),
    UserModel(
        id: 2 ,
        name: 'Ziad Shehata' ,
        phone: '+201113341123'
    ),
    UserModel(
        id: 3 ,
        name: 'Ahmed Shehata' ,
        phone: '+201113364569'
    ),
    UserModel(
        id: 1 ,
        name: 'Mohamed Shehata' ,
        phone: '+201112268819'
    ),
    UserModel(
        id: 2 ,
        name: 'Ziad Shehata' ,
        phone: '+201113341123'
    ),
    UserModel(
        id: 3 ,
        name: 'Ahmed Shehata' ,
        phone: '+201113364569'
    ),
  ];

  UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]) ,
          separatorBuilder: (context,index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ) ,
          itemCount: users.length
      )
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize:MainAxisSize.min ,
          children: [
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              user.phone,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    ),
  ) ;
}


//1.build item
//2.build list
//3.add item to list