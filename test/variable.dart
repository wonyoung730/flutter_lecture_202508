class Variable {


  Variable() {
    String name = '장원영';
    name = '원영';
    int age = 25;
    bool check = true;
    bool check2 = false;
    double weight = 54;

    // var(런타임), dynamic(컴파일)
    var animal = 'dog';
    animal = 'cat';
    // animal = 0; <- 오류 발생


    dynamic home = false;
    home = true;
    home = 'my home';
    home = 10; // <- 오류 발생 X, but 최대한 안하는게 좋다.
    // 네트워크 통신 같은 경우에 어떤 형태가 올지 모를 때 유용함


    String? smwu = 'yes'; // Null을 허용하는 물음표 키워드
    smwu = null;
    // Text(smwu); <- 오류 발생
    int? age2 = 30;
    age2 = null;
    bool? h2 = false;
    h2 = null;


    // final, const 변수의 값 변경 불가
    // final과 const의 차이는 -> 컴파일 시점의 차이
    // 컴파일 = 사람이 작성한 코드를 컴퓨터가 인식할 수 있게 변환하는 작업.
    // 런타임 = 프로그램을 실행하고 있는 상태.
    // const는 컴파일 시점에 값이 정해짐.
    // final은 런타임 시점에 값이 정해짐. -> 메모리에 올라옴.
    final String name3 = 'wonyoung730';
    const String address = 'aaa';
    // address = 'bbb'; <- 오류 발생



  }


}