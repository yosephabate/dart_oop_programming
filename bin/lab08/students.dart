class Student {
  Student({
    required String name,
    required int year,
  })  : _name = name,
        _year = year;

  final String _name;
  final int _year;

  String get name => _name;
  int get year => _year;

  @override
  String toString() {
    return 'Student(name: $_name, year: $_year)';
  }
}

class Undergrad extends Student {
  Undergrad({
    required String name,
    required int year,
  }) : super(name: name, year: year);

  String description() => '$name U $year';
}

class Grad extends Student {
  Grad({
    required String name,
  }) : super(name: name, year: 5);

  String description() => '$name G';
}

class Intern extends Undergrad {
  Intern({
    required String name,
    required int year,
    required double wage,
    required int hours,
  })  : _wage = wage,
        _hours = hours,
        super(name: name, year: year);

  final double _wage;
  final int _hours;

  double getPay() => _wage * _hours;

  String description() => super.description() + ' ' + getPay().toString();
}

class ResearchAssistant extends Grad {
  ResearchAssistant({required String name, required double salary})
      : _salary = salary,
        super(name: name);

  double _salary;

  double getPay() => _salary;

  String description() => super.description() + ' ' + getPay().toString();
}
