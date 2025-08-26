import 'package:flutter/material.dart';

class TextPracticeScreenScreen extends StatelessWidget {
  const TextPracticeScreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text 실습")),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Text 위젯 실습입니다. 색상은 deepOrange입니다.",
                style: TextStyle(color: Colors.deepOrange, fontSize: 25, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}