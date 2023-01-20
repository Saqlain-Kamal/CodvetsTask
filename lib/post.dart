import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: Image(
                  image: AssetImage('assets/images/2.jpg'),
                ),
                title: Text(
                  'Bamsel',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Cricketer',
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                trailing: Icon(
                  (Icons.more_vert_outlined),
                  size: 27,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1531415074968-036ba1b575da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y3JpY2tldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          width: 25,
                          child: Image.asset('assets/images/heart.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          width: 25,
                          child: Image.asset('assets/images/chat.png'),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                        child: Image.asset('assets/images/send.png'),
                      ),
                    ],
                  )
                ],
              ),
              const Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: SizedBox(
                  child: Text(
                    'Kamal is the best Cricketer in the World And A Flutter developer as well',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.centerLeft,
                children: [
                  Positioned(
                    child: SizedBox(
                      width: 55,
                      child: Image.asset(
                        'assets/images/2.jpg',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    child: SizedBox(
                      width: 65,
                      child: Image.asset(
                        'assets/images/4.png',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    child: SizedBox(
                      width: 70,
                      child: Image.asset(
                        'assets/images/6.png',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: -17,
                    child: SizedBox(
                      width: 90,
                      child: Image.asset(
                        'assets/images/7.png',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110,
                    child: Row(
                      children: const [
                        Text(
                          'Liked by ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Kamal ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'and ',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '1K ',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'and others',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
