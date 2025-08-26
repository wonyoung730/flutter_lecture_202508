class JsonModel {
  String id;
  int number;
  Info? info;
  List<FrameWork> frameworks;

  JsonModel(this.id, this.number, this.info, this.frameworks);

  factory JsonModel.fromJson(Map<String,dynamic> json) {
    /// (json['framework'] as Iterable)
    // (json['framework'] as Iterable).map((e) {
    //   return Framework.fromJson(e);
    // }).toList();
    // json['framework'].map((e) => Framework.fromJson(e)).toList();
    json['framework'].map((e) => FrameWork.fromJson(e)).toList();

    return JsonModel(
      json['id'] ?? '',
      json['number'] ?? 0,
      json['info'] == null
          ? null
          : Info.fromJson(json['info']),
      json['framework'] == null
          ? []
          : (json['framework'] as Iterable).map((e) => FrameWork.fromJson(e)).toList(),
    );
  }

  @override
  String toString() {
    return 'JsonModel{id: $id, number: $number, info: $info, frameworks: $frameworks}';
  }
}

class Info {
  int age;
  double weight;
  String name;
  Description? description;

  Info(this.age, this.weight, this.name, this.description);

  factory Info.fromJson(Map<String,dynamic> json) {
    return Info(
        json['age'] ?? 0,
        json['weight'] ?? 0.0,
        json['name'] ?? '',
        json['description'] == null
        ? null
        : Description.fromJson(json['description']),
    );
  }

  @override
  String toString() {
    return 'Info{age: $age, weight: $weight, name: $name, description: $description}';
  }
}

class Description {
  String career;
  String when;

  Description(this.career, this.when);

  // named 생성자와 같은 것
  // json에는 아래 데이터가 들어옴
  // {
  //
  factory Description.fromJson(Map<String,dynamic> json) {
    return Description(
        json['career'] ??'',
        json['when'] ?? '');
  }

  @override
  String toString() {
    return 'Description(career: $career, when: $when)';
  }
}

class FrameWork {
  String email;
  String platform;

  FrameWork(this.email, this.platform);

  factory FrameWork.fromJson(Map<String,dynamic> json) {
    return FrameWork(json['email'] ??'', json['platform'] ?? '');
  }

  @override
  String toString() {
    return 'FrameWork{email: $email, platform: $platform}';
  }
}