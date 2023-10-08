// Named Parameters

//// Named Parameters 를 사용하지 않은 함수
//// Main 함수에서 해당 함수 호출시,
//// 각 파라미터의 역할이 명확히 명시되어 있지 않아서 헷갈릴 수 있음
//// 매개변수의 순서들을 기억해야함.... 하드코딩 느낌...
String sayHello1(
  String personName,
  String myName,
  int myAge,
  String myCountry,
) {
  return 'Hello $personName, I\'m $myName, $myAge and from $myCountry.';
}

//// Named Parameters 를 사용한 함수
//// 기존 매개변수 정의 방식에서 양 끝단을 중괄호로 감싸주기만 하면 완성이다.
//// 매개변수의 순서들을 기억할 필요없고 변수명(목적)만 기억해 주면 된다. (직관적)

//// 다만 Dart 의 NullSafety 로 인하여
//// Main 단에서 각 매개변수의 값이 안 들어올 경우를 대비해야한다고 오류 발생
//// 해결법으론 두가지가 있다.

////// 1. 매개변수 초기값(default value)을 지정해주는 방법
String sayHello2({
  String personName = 'Anon',
  String myName = 'Anon',
  int myAge = 99,
  String myCountry = 'Earth',
}) {
  return 'Hello $personName, I\'m $myName, $myAge and from $myCountry.';
}

////// 2. required modifier 사용
////// 함수 호출시, 매개변수 값 전달을 강제해주는 방법
String sayHello3({
  required String personName,
  required String myName,
  required int myAge,
  required String myCountry,
}) {
  return 'Hello $personName, I\'m $myName, $myAge and from $myCountry.';
}

void main() {
  print(sayHello1('Lee', 'Park', 31, 'Suwon'));
  // 'Hello Lee, I'm Park, 31 and from Suwon.' 출력

  print(sayHello2(
    myName: 'Park',
    myAge: 31,
    personName: 'Kim',
  ));
  // sayHello2 함수 호출시 매개변수 myCountry 의 값을 전달 안했지만 초기화된 값으로 반환됨
  // 'Hello Kim, I'm Park, 31 and from Earth.' 출력

  print(sayHello3(
    myName: 'Park',
    myAge: 31,
    myCountry: 'Suwon',
    personName: 'Kang',
  ));
  // sayHello3 함수 호출시 매개변수 값 전달이 누락되면 Error 발생
  // 'Hello Kang, I'm Park, 31 and from Suwon.' 출력
}
