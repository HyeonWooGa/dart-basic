// Recap_Class Constructor
//// 실제 구현환경에서 우리가 API 를 통해 데이터를 전달 받는다면
//// 우리는 그 데이터를 Dart Class 로 바꿔야한다.

//가상의 Mock Data
var apiData = [
  {
    'name': 'Park',
    'team': 'Christian',
    'xp': 0,
  },
  {
    'name': 'Shin',
    'team': 'Christian',
    'xp': 0,
  },
  {
    'name': 'Lee',
    'team': 'Christian',
    'xp': 0,
  },
];

class Player {
  int xp;
  String team;
  final String name;

  //Flutter 앱에서 많이 사용하는 패턴
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
