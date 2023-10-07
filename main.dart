// Collection For

void main() {
  var oldFriends = ['kim', 'kang'];
  var newFriends = [
    for (var friend in oldFriends) '$friend 👍',
    'kweon',
    'jeon',
    'nam',
  ];

  print(newFriends); // [kim 👍, kang 👍, kweon, jeon, nam]
}
