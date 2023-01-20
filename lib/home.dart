import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/post.dart';
import 'package:newapp/share_module.dart';

import 'bottom.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<dynamic> image = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.png',
    'assets/images/9.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
  ];
  List names = [
    'Nisma',
    'jamal',
    'Zeshan',
    'Zeshan',
    'Zeshan',
    'Zeshan',
    'Zeshan'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 187, 183, 183),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 50,
                        child: Image.asset('assets/images/codvets.jpg')),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 40),
                      child: Container(
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    elevation: 10,
                                    child: Icon(
                                      Icons.notifications_none,
                                      size: 25,
                                      color: Colors.blueGrey,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 10,
                                          )
                                        ],
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(255, 248, 25, 9)),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              //alignment: Alignment.topRight,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    elevation: 10,
                                    child: const Icon(
                                      Icons.message_outlined,
                                      size: 25,
                                      color: Colors.blueGrey,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    right: -30,
                                    top: -15,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '333+',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      width: 60,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            blurStyle: BlurStyle.normal,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            255, 246, 25, 9),
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      final pics = image[index];
                      final name = names[index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.red, width: 2),
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        pics,
                                        //  "${[image][index]['pic'.]}"
                                      ),
                                      radius: 30,
                                      backgroundColor:
                                          Color.fromARGB(255, 176, 217, 237),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(name),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 180,
                child: Share(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Post(),
              const BottomNavigate()
            ],
          ),
        ),
      ),
    );
  }
}
