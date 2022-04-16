void main(List<String> args) {
  // declare and initialize a list of grades
  final grades = [45, 67, 89];

  // print out all grades in the list
  for (var i = 0; i < grades.length; i++) {
    print('grades[$i]: ${grades[i]}');
  }

  // find the sum of all the grades in the list
  double sum = 0.0;
  for (var grade in grades) {
    sum += grade;
  }

  // calculate the average of the grades
  double average = sum / grades.length;

  // print the average
  print('Your average grade is $average.');

  // calculate the letter grade
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

  print('You got $letterGrade!');
}
