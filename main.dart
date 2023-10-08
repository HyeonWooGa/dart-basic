// Cascade Notation
//// Dart 에서 정말 쿨한 것 중의 하나
//// 유용한 Syntax Sugar

class Player {
  int xp;
  String name, team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
  //인스턴스 생성직후 Cascade Notation 사용
  var park = Player(
    name: 'Park',
    xp: 0,
    team: 'Christian',
  )
    ..name = 'PYW'
    ..xp = 100
    ..sayHello(); // 'Hi my name is PYW' 출력

  //인스턴스 생성직후가 아닐때 Cascade Notation 사용
  var temp = park
    ..name = 'Park'
    ..xp = 1000
    ..sayHello(); // 'Hi my name is Park' 출력
}
