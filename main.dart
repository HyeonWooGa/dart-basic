// Typedef
//// 자료형이 헷갈릴 때 도움이 될 자료형 Alias(별명) 를 만드는 방법
//// 기본적으로 typedef 를 TS 처럼 코드 최상단이나 Typedefs 파일에
//// 한 눈에 보이게 사용하면 좋을 것 같습니다.
//// 현재는 학습 중이므로 코드 중간중간에 사용했습니다.

List<int> reverseListOfNumbers1(List<int> numbers) {
  var reversed = numbers.reversed; // Iterable
  return reversed.toList(); // List
}

typedef ListOfInts = List<int>; // ListOfInts == List<int>

ListOfInts reverseListOfNumbers2(ListOfInts numbers) =>
    numbers.reversed.toList();

typedef SetOfInts = Set<int>;

SetOfInts addFiveToSetOfNumbers(SetOfInts numbers) {
  numbers.add(5);

  return numbers;
}

typedef MapOfCouple = Map<String, String>;

String introduceCouple(MapOfCouple couple) =>
    '${couple['man']} and ${couple['woman']} are a very beautiful couple.';

void main() {
  ListOfInts list = [1, 2, 3, 4];
  SetOfInts set = {1, 2, 3, 4};
  MapOfCouple map = {
    'man': 'Park',
    'woman': 'Lee',
  };

  print(reverseListOfNumbers1(list)); // [4,3,2,1] 출력
  print(reverseListOfNumbers2(list)); // [4,3,2,1] 출력

  print(addFiveToSetOfNumbers(set)); // {1, 2, 3, 4, 5} 출력

  print(introduceCouple(map)); // 'Park and Lee are a very beautiful couple.'
}
