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

  void stopWatch() {
    timer?.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void reset() {
    setState(() {
      timer?.cancel();
      isRunning = false;
      // return Duration().zero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 600,
                pinned: true,
                floating: false,
                backgroundColor: const Color(0xF1212121),

                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 17, 75, 123),
                          Colors.black,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const SizedBox(height: 40),
                        
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shadowColor: Colors.black,
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.blueGrey,
                            maximumSize: Size(300, 300),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                           onPressed: startWatch, child: Text("Start",
                           style: TextStyle(fontSize: 50,
                           fontWeight: FontWeight.bold),))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

