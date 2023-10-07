// Sets
//// Set 은 List 와 비슷하지만 중괄호를 사용하고
//// 요소의 중복을 허용하지 않는다.

void main() {
  var numbers1 = {1, 2, 3, 4};
  Set<int> numbers2 = {1, 2, 3, 4};

  print(numbers1); // {1, 2, 3, 4} 출력
  print(numbers2); // {1, 2, 3, 4} 출력

  numbers1.add(5);
  print(numbers1); // {1, 2, 3, 4, 5} 출력

  numbers1.add(5);
  numbers1.add(5);
  numbers1.add(5);
  print(numbers1); // {1, 2, 3, 4, 5} 출력
}
