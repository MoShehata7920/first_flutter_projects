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
          children: const [
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
              icon: const CircleAvatar(
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
              icon: const CircleAvatar(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(5.0,),
                child: Row(
                  children: const [
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
              const SizedBox(
                height: 20.0,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 110.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)
                  {
                    return buildStoryItem();
                  } ,
                  separatorBuilder: (context,index)=> const SizedBox(
                    width: 20,
                  ) ,
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem() ,
                  separatorBuilder:(context, index) => const SizedBox(
                    height: 20,
                  ) ,
                  itemCount: 15,
              ),



            ],
          ),
        ),
      ),
    );
  }
  //1. build item
  //2. build list
  //3. add item to list


  //arrow function

  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
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
      const SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mo Shehata',
              style: TextStyle(
                fontSize:16 ,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'hello Mo ! How are you?And How are your family?',

                    maxLines: 1,
                    overflow: TextOverflow.ellipsis ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration:const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ) ,
                  ),
                ),
                const Text(
                  '02:00 pm',
                )
              ],
            ),

          ],
        ),
      ),
    ],
  );

  // ignore: sized_box_for_whitespace
  Widget buildStoryItem () => Container(
    width: 60 ,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 35.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100875413?v=4'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
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
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Mo Shehata Torky',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );


}
