import 'dart:io';
import 'gradebook_oo.dart';

void main(List<String> args) {
  stdout.write('Enter the number of grades: ');
  var sizeString = stdin.readLineSync();
  int size = int.parse(sizeString as String);

  // declare a list to contain grades
  final gb = GradebookOO();

  // initialize the list
  for (var i = 0; i < size; i++) {
    stdout.write('grades[$i]: ');
    gb.addGrade(double.parse(stdin.readLineSync() as String));
  }

  gb.printGrades();

  double average = gb.averageGrade();
  print('Your average grade is ${average.toStringAsFixed(2)}.');

  String letterGrade = gb.letterGrade(average);
  print('You got $letterGrade!');

  stdout.write('Delete grade value? ');
  double value = double.parse(stdin.readLineSync() as String);
  gb.deleteGrade(value);
  gb.printGrades();
  average = gb.averageGrade();
  print('Your average grade is ${average.toStringAsFixed(2)}.');
  letterGrade = gb.letterGrade(average);
  print('You got $letterGrade!');
}
