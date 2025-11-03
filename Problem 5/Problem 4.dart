import 'dart:io';

void main() {
  File originalFile = File('hello.txt');
  File copiedFile = File('hello_copy.txt');

  if (originalFile.existsSync()) {
    originalFile.copySync(copiedFile.path);
    print('hello.txt has been copied to hello_copy.txt');
  } else {
    print('The source file hello.txt does not exist.');
  }
}
