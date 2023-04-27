void main() {
  String non_nullable;
  // non_nullable = null;  // Error

  String? nullable;
  nullable = null; // OK
  // nullable.isEmpty;  // Error
  nullable?.isEmpty; // OK
}
