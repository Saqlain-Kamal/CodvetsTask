import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 450,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 43, 42, 42),
              Color.fromARGB(255, 7, 39, 9),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset('assets/images/Group1166.png'),
                  Positioned(
                      bottom: 110,
                      left: 20,
                      child: Image.asset('assets/images/Ellipse 273.png')),
                  Positioned(
                      bottom: 150,
                      right: 12,
                      child: Image.asset('assets/images/Ellipse 275.png')),
                  Positioned(
                      bottom: 135,
                      right: 15,
                      child: Image.asset('assets/images/Ellipse 276.png')),
                  Positioned(
                      bottom: 120,
                      right: 20,
                      child: Image.asset('assets/images/Ellipse 277.png')),
                  Positioned(
                      bottom: 0,
                      left: 20,
                      child: Image.asset('assets/images/Mask Group 35.png')),
                  Positioned(
                    top: -50,
                    right: 0,
                    child: Image.asset(
                      'assets/images/Group 1299.png',
                    ),
                  ),
                  Positioned(
                    bottom: -185,
                    left: 0,
                    child: Image.asset('assets/images/Group 1301.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'The Best Social App To',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Make New Friends ',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      '!',
                      style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.w900,
                          color: Colors.deepOrange),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Find People With The Same ',
                  style: TextStyle(
                      color: Colors.white30,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Interest As You',
                  style: TextStyle(
                      color: Colors.white30,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1, color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.deepOrange],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRouter.home);
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
