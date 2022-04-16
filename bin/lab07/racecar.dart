import 'dart:math';

import 'package:color/color.dart';

class Racecar {
  Racecar({required String name, required Color color})
      : _name = name,
        _color = color;

  final String _name;
  final Color _color;
  static const double topSpeed = 200;

  String get name => _name;
  Color get color => _color;

  static Racecar? race(Racecar car1, Racecar car2) {
    double speed1 = Random().nextInt(3) * topSpeed;
    double speed2 = Random().nextInt(3) * topSpeed;

    if (speed1 > speed2) {
      return car1;
    } else if (speed2 > speed1) {
      return car2;
    }

    return null;
  }

  @override
  String toString() {
    return 'Racecar named >>$_name<<!!!!';
  }
}

void main(List<String> args) {
  final car1 = Racecar(name: 'BMW', color: Color.rgb(255, 255, 0));
  final car2 = Racecar(name: 'MCD', color: Color.rgb(0, 255, 255));

  final winner = Racecar.race(car1, car2);
  if (winner == null) {
    print('The race is a tie!');
  } else {
    print('The winner is $winner');
  }
}
