// String Interpolation (문자열 보간법)

void main() {
  var name = 'Park';
  var greeting = 'Nice to meet you, I\'m $name';

  print(greeting); // 'Nice to meet you, I'm Park' 출력

  var num1 = 3;
  var num2 = 4;

  var calcPlus = '$num1 + $num2 is ${num1 + num2}';

  print(calcPlus); // '3 + 4 is 7' 출력
}
