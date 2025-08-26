import 'package:flutter/material.dart';
import 'package:my_project/screen/todo/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController controller = TextEditingController();
  List<TodoModel> todoList = [
    TodoModel("산책", true),
    TodoModel("저녁", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: Column(
        children: [
          Row(
            children: [
              // 현재 주어진 영역의 빈 공간을 최대한 채우는 위젯
              Expanded(child: TextFormField(controller: controller)),
              TextButton(onPressed: () {
                print(controller.text);
                // todoList에 새로운 TodoModel 추가
                // TodoModel todoModel = TodoModel(controller.text, false);
                // var todoModel = TodoModel(controller.text, false);
                // todoList.add(todoModel);
                todoList.add(TodoModel(controller.text, false));
              }, child: Text("등록")),
            ],
          ),

          // Column 안에 스크롤이 있는 위젯이 있는 경우
          // 높이 값을 설정 해줘야 함.
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                var model = todoList[index];
                return Row(
                  children: [
                    Checkbox(
                      value: model.checked,
                      onChanged: (value) {
                        // 1. checkbox를 선택했을 때 checked 값을 변경하고 화면 갱신
                        // model.checked = value!;
                        model.checked = !model.checked;
                        setState(() {});
                      },
                    ),
                    Expanded(child: Text(model.name)),
                    IconButton(
                      onPressed: () {
                        print("index : $index");
                        // 2. delete button을 클릭해서 클릭한 todoModel 제거
                        todoList.removeAt(index);
                        setState(() {});
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Container(height: 2, color: Colors.grey);
              },
              itemCount: todoList.length,
            ),
          ),
        ],
      ),
    );
  }
}