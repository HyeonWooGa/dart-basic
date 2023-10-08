// Optional Positional Parameters
//// Positional Parameters 에 초기값을 주어 함수 호출시 전달인자를 생략할 수 있는 방법
//// 굳이 사용되지 않고 Named Parameters 를 사용하는 것이 더 권장되어 보임

String sayHello(String personName, String myName,
    [int? myAge = 99, String? myCountry = 'Earth']) {
  return 'Hello $personName, I\'m $myName, $myAge and from $myCountry.';
}

void main() {
  print(sayHello('Lee', 'Park', 31));
  // 'Hello Lee, I'm Park, 31 and from Earth.' 출력
}
