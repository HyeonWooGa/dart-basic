void main() {
  // Final: JavaScript 의 const 키워드와 동일한 동작
  // Const: 컴파일 시 고정된 값을 가지는 변수일 떄 사용 ex) api 주소, 최댓값 등

  final String name = '홍길동';
  const int maxCount = 10;

  // name = '김철수'; // Error: The final variable 'name' can only be set once.
  // maxCount = 5; // Error: The final variable 'maxCount' can only be set once.
}
