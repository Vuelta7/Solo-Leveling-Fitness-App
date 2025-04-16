import 'package:flutter/material.dart';

class OpeningLinesAnimation extends StatefulWidget {
  const OpeningLinesAnimation({super.key});

  @override
  _OpeningLinesAnimationState createState() => _OpeningLinesAnimationState();
}

class _OpeningLinesAnimationState extends State<OpeningLinesAnimation> {
  bool _isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Top Line
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            top: _isOpened ? 300 : MediaQuery.of(context).size.height / 2 - 5,
            left: 50,
            right: 50,
            child: Image.asset('assets/images/top_line.png'),
          ),
          // Bottom Line
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            bottom:
                _isOpened ? 300 : MediaQuery.of(context).size.height / 2 - 5,
            left: 50,
            right: 50,
            child: Image.asset('assets/images/bottom_line.png'),
          ),
          // Button to trigger animation
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isOpened = !_isOpened;
                });
              },
              child: Text("Open"),
            ),
          ),
        ],
      ),
    );
  }
}
