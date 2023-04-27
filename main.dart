void main() {
  var name1 = 'park';
  var age1 = 31;
  // var 키워드를 사용해도 dart 에서 자료형 알아서 추론해준다.
  // 변수 선언시 var 키워드 사용이 제일 권장된다.
  // ex) 함수 내 변수 선언, 메소드 내 변수 선언 등

  // var 키워드 사용시 자료형이 동일한 경우 변수의 값 자유롭게 변경 가능
  name1 = 'lee'; // OK
  age1 = 30; // OK
  /*
  name = 32;  // Error
  age = 'kim';  // Error
  */

// 2. var 키워드 외에 기본 자료형 키워드 등을 사용
  String name2 = 'park';
  int age2 = 31;
  // 관습적으로 class 내 property 를 정의할 때 자료형 키워드 사용

  // var 키워드 사용 변수 선언과 동일하게 자료형이 동일한 경우 변수의 값 자유롭게 변경 가능
  name2 = 'lee'; // OK
  age2 = 30; // OK
  /*
  name = 32;  // Error
  age = 'kim';  // Error
  */
}
