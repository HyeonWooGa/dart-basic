// Maps

void main() {
  // var 키워드 이용, 자료형 추론 사용되어 Map 생성
  var player1 = {
    'name': 'park',
    'xp': 19.99,
    'superpower': true,
  };
  // 자료형은 Map<String, Object>
  // Object 는 타입스크립트의 any 와 같은 역할을 한다.
  // 다트는 모든 것이 Object 즉 객체로 이루어져 있기 때문에

  print(player1);

  // Map 키워드 이용, 자료형 지정하여 Map 생성
  Map<String, Object> player2 = {
    'name': 'lee',
    'xp': 19.99,
    'superpower': true,
  };

  print(player2);

  // 아래는 우리가 키, 밸류 값으로 상당히 복잡한 자료형을 넣을 수 있다는 예시
  Map<List<int>, List<String>> example1 = {
    [1, 2]: ['park', 'lee'],
    [3, 4]: ['kim', 'lee'],
  };

  print(example1);

  Map<Object, Object> example2 = {
    [1, 2]: ['park', 'lee'],
    [3, 4]: ['kim', 'lee'],
  };

  print(example2);

  var players1 = [
    player1,
    player2,
  ];

  List<Map<String, Object>> players2 = [
    player1,
    player2,
  ];

  print(players1);
  print(players2);
}

// 다만 자바스크립트에서 같이 API 를 처리하는데 
// 굳이 자바스크립트에서 Object 역할을 하는 다트의 Maps 를 사용하지 않고 
// 다양하고 유용한 기능이 많은 다트의 Class 를 추천
