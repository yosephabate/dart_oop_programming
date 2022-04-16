class GradebookOO {
  final List<double> _grades = [];

  void addGrade(double grade) {
    _grades.add(grade);
  }

  void deleteGrade(double grade) {
    _grades.remove(grade);
  }

  void printGrades() {
    for (var i = 0; i < _grades.length; i++) {
      print('grades[$i]: ${_grades[i]}');
    }
  }

  double averageGrade() {
    // find the sum of all the grades in the list
    double sum = 0.0;
    for (var grade in _grades) {
      sum += grade;
    }

    // calculate the average of the grades
    double average = sum / _grades.length;

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
