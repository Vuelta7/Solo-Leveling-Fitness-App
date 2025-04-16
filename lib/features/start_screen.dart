import 'package:anime_fitness_app/test.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OpeningLinesAnimation()),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.blue[900]!, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Text(
              'Mobile\nLeveling',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'awaken',
                fontSize: 120,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
