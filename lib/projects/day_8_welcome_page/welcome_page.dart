import 'package:flutter/material.dart';
import 'package:flutter_learning/projects/day_7_multi_screen_profile/home_screen.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/lotties/welcome.json'),
            const FittedBox(
              child: Text(
                "Flutter Journey",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 50,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            FilledButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ));
                },
                style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color.fromARGB(255, 242, 149, 20)),
                child: const Text("Get Started")),
            const SizedBox(
              height: 12,
            ),
            OutlinedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    foregroundColor: Colors.white,
                    side: const BorderSide(
                        color: Color.fromARGB(255, 242, 149, 20))),
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
