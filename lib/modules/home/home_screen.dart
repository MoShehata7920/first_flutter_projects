import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
            'First App'
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notification_important,
            ),
            onPressed: onNotification ,
          ) ,
          IconButton(
              onPressed: (){
                // ignore: avoid_print
                print ('Search') ;
              },
              icon: const Icon(
                Icons.search,
              ))
        ],
      ),

      body: Column (
        children: [
          Stack(
            children: const [
              Image(
                  image: NetworkImage('https://yt3.ggpht.com/a-/AAuE7mDJyqVaL2TIabL9bSf4I1xo1_Il4o6K265esw=s900-mo-c-c0xffffffff-rj-k-no') ,
                height: 400,
                width: 300,
                fit: BoxFit.cover,
              ),
              Text('Alahly',
              style: TextStyle(
                fontSize: 30,
              ),)
            ],
          )
        ],
      )

    ) ;
  }

  void onNotification() {
    // ignore: avoid_print
    print ('Notification clicked') ;
  }

}

