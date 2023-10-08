// QQ Operator & QQ Equals(=QQ Assignment Operator)

//// 함수 선언식
String capitalizeName1(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANON';
}

//// 화살표 함수 + 삼항 연산자
String capitalizeName2(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

//// 화살표 함수 + QQ 연산자
String capitalizeName3(String? name) => name?.toUpperCase() ?? 'ANON';

//// QQ Equals
String capitalizeName4(String? name) {
  name ??= 'anon';

  return name.toUpperCase();
}

void main() {
  print(capitalizeName1('Park')); // 'PARK' 출력
  print(capitalizeName1(null)); // 'ANON' 출력

  print(capitalizeName2('Lee')); // 'LEE' 출력
  print(capitalizeName2(null)); // 'ANON' 출력

  print(capitalizeName3('Shin')); // 'SHIN' 출력
  print(capitalizeName3(null)); // 'ANON' 출력

  print(capitalizeName4('Kang')); // 'KANG' 출력
  print(capitalizeName4(null)); // 'ANON' 출력
}
