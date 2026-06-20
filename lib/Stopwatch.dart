import 'dart:async';

import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  // Making the Stopwatch to be inactive at initial
  bool isRunning = false;
  // This Stores the time
  Duration elapsed = Duration.zero;
  // Calling in the Timer Asin Importing the time
  Timer? timer;

  void startWatch() {
    isRunning = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        elapsed += const Duration(seconds: 1);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ,
    );
  }
}
