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
  if (args.isEmpty) {
    print('No valid arguments provided...');
    return;
  }

  // declare a list to contain grades
  final grades = <double>[];

  // initialize the list
  for (var arg in args) {
    grades.add(double.parse(arg));
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
