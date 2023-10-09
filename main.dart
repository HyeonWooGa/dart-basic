// Inheritance (상속)
//// Flutter 에선 가끔 사용하지만 꼭 알아야하는 중요한 개념
//// 자주 사용할 수도?

enum Team { red, blue }

class Human {
  final String name;
  int xp;
  Human({
    required this.name,
    required this.xp,
  });
  void sayHello() {
    print('hi my name is $name');
  }
}

//상속받는 클래스는 부모 클래스의 모든 것을 가지게 된다.
class Player extends Human {
  final Team team;

  // OOP(객체 지향 프로그래밍 개념)
  // super 키워드를 통해 부모 클래스와 상호작용할 수 있게 해준다.
  // 여러가지 방법이 가능하다는 것을 보여주기 위해 super 키워드 두 군데서 사용
  // 실제 코드 작성시에서는 한 군데에서 한 가지 방법으로만 통일성 있게 사용
  Player({
    required this.team,
    required String name,
    required super.xp,
  }) : super(name: name);

  // @override 키워드를 사용해 부모 클래스의 메소드를 덮어쓴다.
  // super 키워드를 통해 부모 클래스의 메소드를 불러올 수 있다.
  @override
  void sayHello() {
    super.sayHello();
    print('and I play for $team');
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'Park',
    xp: 0,
  );
  player.sayHello();
}
