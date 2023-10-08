// Named Constructor Parameters
//// 함수의 Positinal Parameters 와 마찬가지로
//// 생성자의 Parameters 를 Positional Parameters 로
//// 사용하면 Parameters 가 많아졌을 때 문제가 생겨서
//// Named Parameters 를 쓰는 것이 좋다.
//// Named Parameters 의 Null Safety 관련 에러는
//// required 를 쓰는 것이 대부분 좋다.
//// 하지만 특별한 경우에는 초깃값 설정으로 쓸 일도 많을듯!

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

  void sayHello() {
    print('Hello I\'m $name($id) from $team');
  }
}

void main() {
  var player = Player(
    name: 'Park',
    team: 'Christians',
    id: 'yeonwoopark22',
    xp: 1500,
  );

  player.sayHello();
}
