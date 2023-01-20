import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/bottom.dart';

class User extends StatelessWidget {
  const User({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Today',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Tiles(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Tiles(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    ButtonTile(),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Tiles(),
                    ),
                    Divider(),
                    //BottomNavigate(),
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Yesterday',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Tiles(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Tiles(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                child: BottomNavigate(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Tiles extends StatelessWidget {
  const Tiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
            shape: BoxShape.circle),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/2.jpg'),
          radius: 40,
          backgroundColor: Colors.green,
        ),
      ),
      title: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 15,
                //top: 2,
                child: SizedBox(
                  height: 40,
                  child: Image.asset('assets/images/2.jpg'),
                ),
              ),
              SizedBox(
                height: 40,
                child: Image.asset('assets/images/2.jpg'),
              ),
              Positioned(
                left: 25,
                //top: -2,
                child: SizedBox(
                  height: 40,
                  child: Image.asset('assets/images/2.jpg'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text('Kamal and Majid'),
          ),
        ],
      ),
      subtitle: Text(
        'and 2000 others liked your post',
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Text(
        '30s',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class ButtonTile extends StatelessWidget {
  const ButtonTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/2.jpg'),
        radius: 40,
        backgroundColor: Colors.green,
      ),
      title: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 15,
                top: 2,
                child: SizedBox(
                  height: 40,
                  child: Image.asset('assets/images/2.jpg'),
                ),
              ),
              SizedBox(
                height: 40,
                child: Image.asset('assets/images/3.jpg'),
              ),
              Positioned(
                left: 25,
                top: -2,
                child: SizedBox(
                  height: 50,
                  child: Image.asset('assets/images/6.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text('Kamal and Majid'),
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.deepOrange,
                  ],
                ),
              ),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(side: BorderSide.none),
                onPressed: () {},
                child: const Text(
                  'Follow back',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
      trailing: Text(
        '30s',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
