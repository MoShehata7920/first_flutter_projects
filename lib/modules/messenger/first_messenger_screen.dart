import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),

          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                ),
              )
          ),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                ),
              )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(5.0,),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60 ,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mo Shehata Torky',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mo Shehata',
                                style: TextStyle(
                                  fontSize:16 ,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'hello Mo!How are you?And Hoow are your family?',

                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration:BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ) ,
                                    ),
                                  ),
                                  Text(
                                    '02:00 pm',
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mo Shehata',
                                style: TextStyle(
                                  fontSize:16 ,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'hello Mo!How are you?And Hoow are your family?',

                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration:BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ) ,
                                    ),
                                  ),
                                  Text(
                                    '02:00 pm',
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mo Shehata',
                                style: TextStyle(
                                  fontSize:16 ,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'hello Mo!How are you?And Hoow are your family?',

                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration:BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ) ,
                                    ),
                                  ),
                                  Text(
                                    '02:00 pm',
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mo Shehata',
                                style: TextStyle(
                                  fontSize:16 ,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'hello Mo!How are you?And Hoow are your family?',

                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration:BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ) ,
                                    ),
                                  ),
                                  Text(
                                    '02:00 pm',
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 5.0,
                                bottom: 5.0 ,
                              ),
                              child: CircleAvatar(
                                radius: 5.0 ,
                                backgroundColor: Colors.green,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mo Shehata',
                                style: TextStyle(
                                  fontSize:16 ,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'hello Mo!How are you?And Hoow are your family?',

                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration:BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ) ,
                                    ),
                                  ),
                                  Text(
                                    '02:00 pm',
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
