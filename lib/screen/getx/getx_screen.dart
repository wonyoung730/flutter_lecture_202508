import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/screen/getx/my_controller.dart';

class GetxScreen extends StatefulWidget {
  const GetxScreen({super.key});

  @override
  State<GetxScreen> createState() => _GetxScreenState();
}

class _GetxScreenState extends State<GetxScreen> {
  @override
  Widget build(BuildContext context) {
    MyController.to;
    return Scaffold(
      appBar: AppBar(title: Text("Getx")),
      body: Column(
        children: [
          // Getx 상태관리의 두가지 요소
          // 1. Rx로 선언된 변수
          // 2. Obx로 감쌀 것.
          Obx(() {
            return Text(MyController.to.count.value.toString());
          }),

          ElevatedButton(
            onPressed: () {
              MyController.to.countUp();
            },
            child: Text("Count Up"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Move")),
        ],
      ),);
  }
}
