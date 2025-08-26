// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_project/main.dart';
import 'collections.dart';
import 'conditional.dart';
import 'for_loop.dart';
import 'method.dart';
import 'oop/person.dart';
import 'oop/product.dart';

/*
void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
*/

void main() {

  /*
  Method();
  */

  /*
  var collection = Collections(); // Collections collection = Collections();
  collection.listAdd();
  */

  /*
  Collections collection = Collections();
  collection.listAdd();
  collection.listRemove();
  collection.mapController();
  collection.setController();
  collection.practice();
  */

  // var conditional = Conditional();
  // conditional.simpleSwitch();
  // var ifScore = conditional.practiceIf(87);
  // var switchScore = conditional.practiceSwitch(61);
  // print('main ifScore = $ifScore, switchScore = $switchScore');
  // conditional.practiceIf();
  // conditional.practiceSwitch();
  // conditional.practiceIf(87);

  //ForLoop();


  /*
  Person person = Person("김진한", 34, 75);
  // person : Instance of 'Person'
  // Person 클래스의 인스턴스
  // 인스턴스 => 클래스를 생성해서, 메모리에 올라간 상태
  print("person : $person");
  print("person name : ${person.name}");
  print("person age : ${person.age}");
  print("person weight : ${person.weight}");
  print("person nickName : ${person.nickName}");
  person.talk();

  List<Person> personList = [];
  Person person1 = Person("장고미", 15, 13);
  Person person2 = Person ("장우동", 11, 14);
  Person person3 = Person ("장디올", 5, 14);

  /// personList에 데이터들을 추가
  personList.addAll([person1, person2, person3]);

  /// personList의 기존의 데이터들은 사라지고, 새로 값 할당
  personList = [person1, person2, person3];

  print('personList : $personList');
  Product(name: "jinhan", company: "샐링잇");
  // Product.name(name, company);
  // Product.all(name, company, count, price);

  for (var person in personList) {
    print(person);
  }
  */

  List<Product> productList = [];
  productList.add(Product(name: "아이스티", company: "스타벅스"));
  productList.add(Product(name: "프라푸치노", company: "스타벅스"));
  productList.add(Product(name: "자몽망고코코", company: "스타벅스"));

  for (var product in productList) {
    print('product : $product');
    product.sale();
    print('product : $product');
  }
  productList[1].sale();
  productList[1].sale();
  productList[1].sale();
  productList[1].sale();
  print('p1 : ${productList[1].count}');

}
