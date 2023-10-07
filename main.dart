// 1. 배열 생성법
//// 아래 두 가지 생성법은 같은 결과를 갖는다.

void main () {
  var numbers1 = [1, 2, 3, 4];  // 가능할 때는 var 를 사용
  List<int> numbers2 = [1, 2, 3, 4];  // class 를 다룰 때 사용
  
  numbers1.add('five');  // Error
  numbers2.add('five');  // Error
  
  var numbers3 = [1, 2, 3, 4, 'five'];
  List<Object> numbers4 = [1, 2, 3, 4, 'five'];
  
  numbers3.add('six');  // OK
  numbers4.add('six');  // OK
}

// 2. 배열 프로퍼티와 메소드 (객체)
//// 다양한 프로퍼티와 메소드가 있지만 우선 몇 가지만 학습한다.
//// 다트는 모든 것이 Object 로 이루어진 완벽한 객체지향 언어로 평가 받는다.
//// 따라서 배열도 Object 로 이루어져 있고 많은 프로퍼티와 메소드를 기능으로써 제공하고 있다.

void main () {
  var numbers = [1, 2, 3, 4];
  numbers.first;  // 첫 번째 요소 반환하는 프로퍼티
  numbers.last;  // 마지막 요소 반환하는 프로퍼티
  numbers.add(5);  // 배열에 요소를 추가하는 메소드
  ...  // 그 외 유용한 프로퍼티와 메소드가 많으니 필요한 경우 확인하여 사용하자.
}

// 3. 배열 생성시 꿀팁
//// dartpad 나 VS code 에서 dart 코드 작성시 배열의 마지막 요소에 , 를 찍으면 아래와 같이 포매팅되어 가독성에 유리하다.

void main () {
  var numbers = [
    1,
    2,
    3,
    4,
  ];
}

// 4. collection if
//// 배열 생성시에 if 를 사용하여 존재할 수도 안할 수도 있는 요소를 만들 수 있다.
//// 정말 멋진 기능이고 지원하는 언어가 거의 없다.

void main () {
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  
  print(numbers);  // [1, 2, 3, 4, 5] 출력
}