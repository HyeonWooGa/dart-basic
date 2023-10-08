// Named Constructor Parameters

//// Class 정의
class Player {
  String name;
  final String id;
  int xp;
  String team;

  Player({
    required this.name,
    required this.id,
    required this.xp,
    required this.team,
  });

  // Named Constructor; Named Constructor Parameters 사용
  Player.createChristiansPlayer({
    required this.name,
    required this.id,
    this.xp = 0,
    this.team = 'Christians',
  });

  // Named Constructor; Named Constructor Parameters & 콜론 사용
  Player.createNonChristianPlayer({
    required String name,
    required String id,
  })  : this.name = name,
        this.id = id,
        this.team = 'Non Christians',
        this.xp = 0;

  // Named Constructor; Positional Constructor Parameters 사용
  Player.createUnknownPlayer(this.name, this.id,
      [this.xp = 0, this.team = 'Unknown']);

  void sayHello() {
    print('Hello I\'m $name($id) from $team team');
  }
}

void main() {
  // 기본 Constructor
  var player1 = Player(
    name: 'Park',
    team: 'Christians',
    id: 'yeonwoopark22',
    xp: 1500,
  );

  // Named Constructor; Named Constructor Parameters 사용
  var player2 = Player.createChristiansPlayer(name: 'Lee', id: 'igh1482');

  // Named Constructor; Named Constructor Parameters & 콜론 사용
  var player3 = Player.createNonChristianPlayer(name: 'Choi', id: 'choi77');

  // Named Constructor; Positional Constructor Parameters 사용
  var player4 = Player.createUnknownPlayer('Ryu', 'rjy90');

  // 각각의 생성자로 생성된 인스턴스 메소드 사용하여 Print; 모두 정상 동작
  player1.sayHello();
  player2.sayHello();
  player3.sayHello();
  player4.sayHello();
}
