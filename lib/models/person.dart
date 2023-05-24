class Person {
  late int id;
  late String name;
  late String surname;
  late String nickname;
  late String password;

  Person.fromMap(Map<String, dynamic> data) {
    assert(data['id'] != null);
    assert(data['name'] != null);
    assert(data['surname'] != null);
    assert(data['nickname'] != null);
    assert(data['password'] != null);

    id = data['id'];
    name = data['name'];
    surname = data['surname'];
    nickname = data['nickname'];
    password = data['password'];
  }

  Map<String, dynamic> personToMap() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'nickname': nickname,
      'password': password,
    };
  }
}
