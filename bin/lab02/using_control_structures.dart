import 'dart:io';

void main(List<String> args) {
  int age = 17;
  if (age >= 18) {
    print('You are old enough to drive');
  } else {
    print('You are not old enough to drive');
  }

  for (var i = 100; i >= 0; i--) {
    stdout.write(i.toString() + ' ');
  }
  print('');

  print('again');
  var i = 100;
  while (i >= 0) {
    stdout.write(i.toString() + ' ');
    i--;
  }
  print('');
}
