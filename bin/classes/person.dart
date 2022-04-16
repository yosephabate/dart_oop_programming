class Person {
  // constructor
  Person({
    required String name,
    required int age,
    required double height,
  })  : _name = name,
        _age = age,
        _height = height;

  // named constructors
  Person.guest() : this(name: 'guest', age: 0, height: 0);

  static final Person _instance = Person(name: 'sample', age: 0, height: 0);
  factory Person.sample() => _instance;

  // private object fields
  String _name;
  int _age;
  double _height;

  // getters
  String get name => _name;
  int get age => _age;
  double get height => _height;

  // setters
  set name(newName) => _name = newName;
  set age(newAge) => _age = newAge;
  set height(newHeight) => _height = newHeight;

  // overridden Object? methods
  @override
  String toString() {
    return 'Person(name: $_name, age: $_age, height: $_height)';
  }
}
