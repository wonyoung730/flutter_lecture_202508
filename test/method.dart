class Method {
  Method() {
    int age = add();
    print(age);

    double calcResult = calculator(5, 9);
    print(calcResult);

    String introduceMy = introduce(name: "장원영");
    print(introduceMy);

    String o = optional("장원영", c: "똥강아지", b: "아가");
    print(o);
  }

  int add() { //add 라는 함수 추가
    return 30;
  }

  double calculator(int a, int b) {
    return (a + b) * 1.5;
  }

  String introduce({required String name}) {
    return "안녕하세요. $name 입니다.";
  }

  String optional(String a, {String b = '', required String c}) {
    return "안녕하세요. $a님. $c를 잘 부탁드립니다. $b";
  }
}