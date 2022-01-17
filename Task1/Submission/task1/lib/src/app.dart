import 'package:flutter/material.dart';
import 'package:task1/widget/widgets.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  _Task1State createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  double count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "ENHANCED COUNTER",
            style: TextStyle(
              fontSize: 25.00,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        count = 1;
                      },
                    );
                  },
                  child: PaddedBox("Reset Counter"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: PaddedBox("Count + 1"),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: PaddedBox("Count - 1"),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count *= 2;
                    });
                  },
                  child: PaddedBox("Count * 2"),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count /= 2;
                    });
                  },
                  child: PaddedBox("Count / 2"),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                "Current Count : $count",
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
