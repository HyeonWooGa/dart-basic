// Abstract Methods & Abstract Classes
//// 추상 클래스로는 인스턴스를 생성할 수 없다.
//// 추상 클래스는 다른 클래스들이 직접 구현해야하는 메소드들을 모아 놓은 일종의 청사진(Blueprint)
////// 수많은 청사진에 메소드의 이름과 반환 타입, 매개변수만 정해서 정의할 수 있다.
//// Flutter 를 사용할때 많이 사용하진 않아도 유용한 기능이긴 합니다.

abstract class Human {
  void walk();
}

enum Team { Christians, NonChristians, Unknown }

class Player extends Human {
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

  void walk() {
    print('I\'m walking');
  }
}

class Coach extends Human {
  void walk() {
    print('Coach\'s walking');
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
