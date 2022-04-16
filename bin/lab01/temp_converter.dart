void main(List<String> args) {
  double celcius = 37;
  double fahrenheit = (9 / 5) * celcius + 32;
  print('Celcius: $celcius, Fahrenheit: ${fahrenheit.toStringAsFixed(2)}');

  celcius = 100;
  fahrenheit = (9 / 5) * celcius + 32;
  print('Celcius: $celcius, Fahrenheit: ${fahrenheit.toStringAsFixed(2)}');
}
