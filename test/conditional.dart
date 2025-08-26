class Conditional {
  void simpleIf() {
    int age = 30;
    bool check = false;
    if(age < 20) {
      print('Conditional.simpleIf 미성년자');
    } else {
      print('Conditional.simpleIf 성인');
    }
  }

  void simpleSwitch() {
    int age = 30;

    switch(age) {
      case 10:
        print('10');
        break;
      case 20:
        print('20');
        break;
      case 30:
        print('30:');
        break;
      case 40:
        print('40');
        break;
    }
  }

  /*
  String practiceIf(int score) {
      if (score >= 90) return "A";
      if (score >= 80) return "B";
      if (score >= 70) return "C";
      if (score >= 60) return "D";
      return "F";
    }
  */

  void practiceIf() {
    int score = 88;

    if(score >= 90) {
      print('Your grade is A');
    } else if (score < 90 && score >= 80) {
      print('Your grade is B');
    } else if (score < 80 && score >= 70) {
      print('Your grade is C');
    } else if (score < 70 && score >= 60) {
      print('Your grade is D');
    } else {
      print('Your grade is F');
    }
  }

  /*
  String practiceSwitch(int score) {
    // score에서 10을 나누고 정수를 반환
    // ex) score = 90 => score ~/ 10 = 9
    // ex) score = 85 => score ~/ 10 = 8
    int value = score ~/ 10;
    switch (value) {
      case 9:
        return "A";
      case 8:
        return "B";
      case 7:
        return "C";
      case 6:
        return "D";
    }
    return "F";
  }
  */

  void practiceSwitch() {
    int score = 62;
    int value = score ~/ 10;

    switch(value) {
      case 10:
        print('Your grade is A');
        break;
      case 9:
        print('Your grade is A');
        break;
      case 8:
        print('Your grade is B');
        break;
      case 7:
        print('Your grade is C');
        break;
      case 6:
        print('Your grade is D');
        break;
      case 5:
        print('Your grade is F');
        break;
      case 4:
        print('Your grade is F');
        break;
      case 3:
        print('Your grade is F');
        break;
      case 2:
        print('Your grade is F');
        break;
      case 1:
        print('Your grade is F');
        break;
      case 0:
        print('Your grade is F');
        break;
    }
  }
}