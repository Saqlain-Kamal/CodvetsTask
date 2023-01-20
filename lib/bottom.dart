import 'package:flutter/material.dart';
import 'package:newapp/home.dart';
import 'package:newapp/routes.dart';
import 'package:newapp/user/user.dart';

class BottomNavigate extends StatelessWidget {
  const BottomNavigate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: const Icon(
                    Icons.home,
                    size: 45,
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).pushNamed(AppRouter.user);
                  }),
                  child: const Icon(
                    Icons.person,
                    size: 45,
                  ),
                ),
                const Icon(
                  Icons.explore,
                  size: 45,
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.thumb_up,
                    size: 45,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
