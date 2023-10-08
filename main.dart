// Defining a Function
//// 대부분 프로그래밍 언어의 함수와 같이
//// 반환 자료형, 함수 이름, 매개변수 선언, 함수 내부 코드로 이루어져 있습니다.

//// 함수 내부 코드가 한 줄인 경우 Fat Arrow Function 을 사용할 수 있고
//// 함수 내부 코드가 한 줄 이상인 경우 함수 선언식을 사용할 수 있습니다.

void sayHello1(String name) {
  print('How are you $name');
}

String sayHello2(String name) {
  return 'How are you $name';
}

String sayHello3(var name) {
  // return 타입은 var 사용 불가
  return 'How are you $name';
}

void main() {
  sayHello1('Park'); // 'How are you Park' 출력
  print(sayHello2('Lee')); // 'How are you Lee' 출력
  print(sayHello3('Kim')); // 'How are you Kim' 출력
}
