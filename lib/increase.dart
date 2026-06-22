import 'package:flutter/material.dart';
import 'Stopwatch.dart';

class Increase extends StatefulWidget {
  const Increase({super.key});

  @override
  State<Increase> createState() => _IncreaseState();
}

class _IncreaseState extends State<Increase> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decremental() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
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

                        Container(
                          width: 160,
                          height: 160,

                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 15,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "$counter",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          "Press the two button to see the magic",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),

                        const SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: decremental,

                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shadowColor: Colors.black,
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text("-"),
                                ),
                              ),

                              SizedBox(width: 10),

                              ElevatedButton(
                                onPressed: increment,

                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shadowColor: Colors.black,
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.white,

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text("+"),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: reset,
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shadowColor: Colors.black,
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.black,
                          ),
                          child: Text("Reset"),
                        ),

                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const StopWatch(),
                              ),
                            );
                          },
                          child: const Text("Stopwatch"),
                        ),
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
