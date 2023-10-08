// Class Constructor

////// Class 정의 기초
class Player1 {
  //Properties
  late String name;
  late final String id;
  late int xp;
  // Dart 는 초기값이 없는 것을 못 버텨하기 때문에
  // 생성자를 사용하여 인스턴스 생성 하고자 할때는
  // late 키워드 사용
  //// 변수 선언은 여기서 했지만, 값은 나중에 받아온다는 뜻
  //// late 는 Class 에서 아주 유용하지만
  //// 더 짧게 late 의 역할을 하게 코드 작성하는 방법도 있다.

  //Constructor
  Player1(String name, String id, int xp) {
    this.name = name;
    this.id = id;
    this.xp = xp;
  }

  //Methods
  void sayHello() {
    print('Hello I\'m $name($id)');
  }
}

//// Class 정의
////// 생성자의 매개변수로 this.프로퍼티를 사용하여
////// late 키워드나 생성자 내부 코드가 필요 없어졌다.
////// 하지만 생성자 매개변수가 Positional Parameters
////// 순서를 기억해야하는 단점이 있다.
////// 다음에는 생성자 매개변수를 Named Parameters 로 사용하는 것을 학습
class Player2 {
  String name;
  final String id;
  int xp;

  Player2(this.name, this.id, this.xp);

  void sayHello() {
    print('Hello I\'m $name($id)');
  }
}

void main() {
  var player1 = Player1('Park', 'yeonwoopark22', 1500);
  var player2 = Player1('Lee', 'igh1482', 2000);

  player1.sayHello();
  player2.sayHello();

  var player3 = Player2('Shin', 'jws60', 1500);
  var player4 = Player2('Park', 'hsp55', 2000);

  player3.sayHello();
  player4.sayHello();
}
