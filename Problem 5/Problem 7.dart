import 'dart:io';

void main() {
  File csvFile = File('students.csv');

 
  List<List<String>> students = [
    ['Name', 'Age', 'Address'],
    ['Abu Taher Sayem', '22', 'Dhaka'],
    ['Rakib Hasan', '21', 'Chittagong'],
    ['Nusrat Jahan', '23', 'Khulna'],
  ];


  String csvContent = students.map((row) => row.join(',')).join('\n');


  csvFile.writeAsStringSync(csvContent);
  print('Student data saved to students.csv');


  print('\n--- Student Data from CSV ---');
  print(csvFile.readAsStringSync());
}
