// Enum

enum Team { Christians, NonChristians, Unknown }

class Player {
  int xp;
  String name;
  Team team;

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
    team: Team.Christians,
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
