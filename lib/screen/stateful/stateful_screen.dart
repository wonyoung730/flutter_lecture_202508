import 'package:flutter/material.dart';
import 'package:my_project/screen/stateful/inner_state.dart';

class StatefulScreen extends StatefulWidget {
  const StatefulScreen({super.key});

  @override
  State<StatefulScreen> createState() => _StatefulScreenState();
}

class _StatefulScreenState extends State<StatefulScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful")),
      body: Column(
        children: [
          Text("Count : $count"),
          TextButton(onPressed: () {
            count++;
            setState(() { // 이 함수를 통해 화면을 갱신시킬 수 있음.

            });
          },
            child: Text("Count up"),
          ),
          InnerState(count: count)
        ],
      ),
    );
  }
}