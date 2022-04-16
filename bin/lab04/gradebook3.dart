import 'dart:io';

class Gradebook {
  void printGrades(List<double> grades) {
    for (var i = 0; i < grades.length; i++) {
      print('grades[$i]: ${grades[i]}');
    }
  }

  double averageGrade(List<double> grades) {
    // find the sum of all the grades in the list
    double sum = 0.0;
    for (var grade in grades) {
      sum += grade;
    }

    // calculate the average of the grades
    double average = sum / grades.length;

    return average;
  }

  String letterGrade(double average) {
    String letterGrade;
    if (average >= 90) {
      letterGrade = 'A';
    } else if (average >= 80) {
      letterGrade = 'B';
    } else if (average >= 70) {
      letterGrade = 'C';
    } else if (average >= 60) {
      letterGrade = 'D';
    } else {
      letterGrade = 'F';
    }

    return letterGrade;
  }
}

void main(List<String> args) {
  stdout.write('Enter the number of grades: ');
  var sizeString = stdin.readLineSync();
  int size = int.parse(sizeString as String);

  // declare a list to contain grades
  final grades = <double>[];

  // initialize the list
  for (var i = 0; i < size; i++) {
    stdout.write('grades[$i]: ');
    grades.add(double.parse(stdin.readLineSync() as String));
  }

  final gradebook = Gradebook();

  // print out all grades in the list
  gradebook.printGrades(grades);

  // print the average
  double average = gradebook.averageGrade(grades);
  print('Your average grade is ${average.toStringAsFixed(2)}.');

  // print the letter grade
  String letterGrade = gradebook.letterGrade(average);
  print('You got $letterGrade!');
}
