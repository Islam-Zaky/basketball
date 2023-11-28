import 'package:flutter/material.dart';

void main() {
  runApp(Basketball());
}

class Basketball extends StatefulWidget {
  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int teamAPoint = 0;

  int teamBPoint = 0;

  void addOnePoint() {
    print("Add One Point");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            /////////////// Team A, Team B ////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 42),
                    ),
                    Text(
                      "$teamAPoint",
                      style: TextStyle(fontSize: 140),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // foregroundColor: Colors.black,
                        shape: const LinearBorder(),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        teamAPoint++;
                        setState(() {});
                        print(teamAPoint);
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 8.0,
                    ),
                    //
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // foregroundColor: Colors.black,
                        shape: const LinearBorder(),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 8,
                    ),
                    //
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // foregroundColor: Colors.black,
                        shape: const LinearBorder(),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                /////////// Vertical Divider //////////////////////
                const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    thickness: 3,
                    color: Color(0Xffe3e2e4),
                  ),
                ),
                /////////////////// Team B /////////////////////////
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 42),
                    ),
                    Text(
                      "$teamBPoint",
                      style: TextStyle(fontSize: 140),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // foregroundColor: Colors.black,
                        shape: const LinearBorder(),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint++;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 8,
                    ),
                    //
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // foregroundColor: Colors.black,
                        shape: const LinearBorder(),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 8,
                    ),
                    //
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // foregroundColor: Colors.black,
                        shape: const LinearBorder(),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            ////////////// Reset Button ///////////////////
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                // foregroundColor: Colors.black,
                shape: const LinearBorder(),
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoint = 0;
                  teamBPoint = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
