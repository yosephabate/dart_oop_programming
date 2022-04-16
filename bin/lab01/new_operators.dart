/// Example: Basic arithmetic operations
///
void main(List<String> arguments) {
  int x = 5;
  int y = 3;
  int z = x + x * y - y;
  print("The value of z is " + z.toString());

  int w = ++x + y + y--;
  print("The value of w is " + w.toString());
  print("The value of x is now " + x.toString());
  print("The value of y is now " + y.toString());

  bool a = true;
  bool b = false;
  bool c = ((a && (!(x > y))) && (a || y > x));
  print("c is " + c.toString());
}
