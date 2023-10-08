// First Dart Class (생성자 아직 사용 X)
//// Class Property 정의 시에 자료형을 지정해줘야 한다.

////// Class 정의
class Player {
  //Properties
  String name = 'Lee';
  final String id = 'ER23YT'; // Class 의 프로퍼티가 수정 불가능 (final 키워드)
  int xp = 1500;

  //Method
  void sayHello() {
    print('Hello I\'m $name($id)');
    // this.name 은 Mathod 내 변수 이름과
    // Class 내 변수 이름이 겹치는 경우에만
    // Class 내 변수를 호출하기 위해 사용
    // 일반적으로 this.name 과 같이 Property 호출하는 것은 지양
  }
}

void main() {
  ////// 인스턴스 생성
  var player = Player(); // var player = new Player(); new 는 생략 가능
  print('Name: ${player.name}, Id: ${player.id}');
  // 'Name: Lee, Id: ER23YT' 출력

  player.sayHello(); // 'Hello I'm Lee(ER23YT)' 출력

  player.name = 'Park';
  // player.id = 'ET87TY';   // Error 발생
  print('Name: ${player.name}, Id: ${player.id}');
  // 'Name: Park, Id: ER23YT' 출력

  player.sayHello(); // 'Hello I'm Park(ER23YT)' 출력
}
