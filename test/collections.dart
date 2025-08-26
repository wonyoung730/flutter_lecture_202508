class Collections {

  // List, Map, Set

  void listAdd() {
    List<int> listInt = [];
    listInt.add(1);
    listInt.add(2);
    listInt.add(3);
    listInt.addAll([4, 5, 6, 7, 8]);
    listInt.insert(0, 50);
    print(listInt);
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.add("김진한");
    nameList.add("홍길동");
    nameList.add("이순신");
    nameList.add("오바마");
    nameList.add("기린");
    nameList.add("호랑이");
    nameList.add("사자");

    nameList.remove("기린");

    // nameList.removeLast();
    
    nameList.removeAt(0);

    nameList.removeWhere((element) {
      print("element : $element");
      return element == "호랑이";
    });

    print(nameList);
    nameList.clear();
    print(nameList);
  }

  void listController() {
    List<int> ageList = [4, 5, 2, 6, 7, 4, 8];
    int length = ageList.length;
    print('Collections.listController : $length');

    int two = ageList[2];
    print('Collections.listController : $two');

    // ageList가 비어있는 경우 isEmpty = true
    bool isEmpty = ageList.isEmpty;

    // ageList가 비어있지 않은 경우 isNotEmpty = true
    bool isNotEmpty = ageList.isNotEmpty;
  }

  // Map이라는 타입은 => key, value
  void mapController() {
    Map m = {
      "a" : 10,
      "b" : 11,
      "c" : 12,
      50 : 61,
      1111 : 4444,
    };

    // m["a"]; // <- 10이라는 숫자가 할당되어 들어오게 됨
    var maValue = m["a"];
    print('Collections.mapController : $maValue');
    m["d"] = 40;
    m.remove("c");
    print('Collections.mapController : $m');

    Map<String, int> typeMap = {
      "a" : 33,
      "b" : 20,
      "c" : 30,
    };
  }

  void setController() {
    Set s = {'a', 'b', 'c'};
    s.add("a");
    s.add("b");
    print('Collections.setController : $s');
  }

  void practice() {
    List<String> animals = [];
    animals.addAll(["강아지", "악어", "송아지", "고양이", "햄스터"]);
    print('Collections.practice : $animals');
    animals.removeAt(1);
    print('Collections.practice : $animals');

    Map<String, int> ageMap = {"김진한": 34};
    ageMap["함혜원"] = 35;
    ageMap["김휘건"] = 2;
    print('Collections.practice map 1 : $ageMap');
    // ageMap.remove("함혜원");
    ageMap.removeWhere((key, value) {
      return key == "함혜원";
    });
    print('Collections.practice map 2 : $ageMap');

    Set nation = {};
    nation.add("한국");
    nation.add("일본");
    nation.add("중국");
    nation.add("러시아");
    nation.add("미국");
    print('Collections.practice set 1 : $nation');
    nation.remove("한국");
    print('Collections.practice set 2 : $nation');

  }
}