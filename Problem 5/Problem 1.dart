import 'dart:io';

void main() {
 
  File file = File('hello.txt');
  file.writeAsStringSync('Abu Taher Sayem');

  print('Your name has been saved in hello.txt');
}
