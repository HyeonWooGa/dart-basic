void main() {
  late var anything; // dynamic
  /*
  print(anything);  // Error
  */
  anything = true;
  print(anything); // OK
  anything = 3;

  late String name; // String
  /*
  print(name);  // Error
  */
  name = 'park';
  print(name); // OK
  anything = 'lee';

  late final double height;
  /*
  print(height); // Error
  */
  height = 167.8;
  print(height); // OK
  /*
  height = 167.9; // Error
  */
}
