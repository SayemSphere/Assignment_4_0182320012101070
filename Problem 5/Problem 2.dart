import 'dart:io';

void main() {
  File file = File('hello.txt');


  file.writeAsStringSync('\nFriend: Rakib Hasan', mode: FileMode.append);

  print('Your friends name has been added to hello.txt');
}
