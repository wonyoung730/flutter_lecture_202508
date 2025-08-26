import 'package:flutter/material.dart';
import 'package:my_project/screen/column/column_screen.dart';
import 'package:my_project/screen/container/container_practice_screen.dart';
import 'package:my_project/screen/container/container_screen.dart';
import 'package:my_project/screen/column/column_practice_screen.dart';
import 'package:my_project/screen/image/image_screen.dart';
import 'package:my_project/screen/image/image_practice_screen.dart';
import 'package:my_project/screen/navigator/navigator_screen.dart';
import 'package:my_project/screen/network/network_screen.dart';
import 'package:my_project/screen/row/row_practice_screen.dart';
import 'package:my_project/screen/row/row_screen.dart';
import 'package:my_project/screen/row/column_row_practice_screen.dart';
import 'package:my_project/screen/scrollview/listview_builder_screen.dart';
import 'package:my_project/screen/scrollview/listview_practice_screen.dart';
import 'package:my_project/screen/scrollview/listview_screen.dart';
import 'package:my_project/screen/scrollview/scrollview_screen.dart';
import 'package:my_project/screen/stateful/stateful_screen.dart';
import 'package:my_project/screen/text/text_practice_screen.dart';
import 'package:my_project/screen/text/text_screen.dart';
import 'package:my_project/screen/todo/todo_screen.dart';
import 'package:my_project/stack/stack_screen.dart';
import 'package:my_project/stack/stack_practice_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContainerScreen();
                    },
                  ),
                );
              },
              child: Text("Container"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContainerPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Container 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnScreen();
                    },
                  ),
                );
              },
              child: Text("Column"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Column 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RowScreen();
                    },
                  ),
                );
              },
              child: Text("Row"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RowPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Row 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnRowPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Column Row 심화"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TextScreen();
                    },
                  ),
                );
              },
              child: Text("Text"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TextPracticeScreenScreen();
                    },
                  ),
                );
              },
              child: Text("Text 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ImageScreen();
                    },
                  ),
                );
              },
              child: Text("Image"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ImagePracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Image 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StackScreen();
                    },
                  ),
                );
              },
              child: Text("Stack"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StackPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Stack 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScrollviewScreen();
                    },
                  ),
                );
              },
              child: Text("ScrollView"),
            ),
            SizedBox(height: 10),
            button(context, ListviewScreen(), "ListView"),
            SizedBox(height: 10),
            button(context, ListviewBuilderScreen(), "ListView Builder"),
            SizedBox(height: 10),
            button(context, ListviewPracticeScreen(), "ListView 실습"),
            SizedBox(height: 10),
            button(context, StatefulScreen(), "Stateful"),
            SizedBox(height: 10),
            button(context, NavigatorScreen(), "Navigator"),
            SizedBox(height: 10),
            button(context, TodoScreen(), "Todo"),
            SizedBox(height: 10),
            button(context, NetworkScreen(), "Network"),
          ],
        ),
        ),
      ),
    );
  }

  Widget button(BuildContext context, Widget child, String name) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return child;
            },
          ),
        );
      },
      child: Text(name),
    );
  }
}