import 'dart:io';

void main() {
  File fileToDelete = File('hello_copy.txt');

  if (fileToDelete.existsSync()) {
    fileToDelete.deleteSync();
    print('hello_copy.txt has been deleted.');
  } else {
    print('File not found. Please make sure hello_copy.txt exists.');
  }
}
