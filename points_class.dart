import 'dart:math';

class Points {
  double? x;
  double? y;

  // Constructor class
  Points(double x, y) {
    this.x = x;
    this.y = y;
  }

  Points.halved(double x, y) {
    this.x = x / 2;
    this.y = y / 2;
  }

  Points.rotated_ninety(double x, y) {
    this.x = y;
    this.y = -x;
  }

  // Functions

  void printpt() {
    print("$x , $y");
  }

  double? getx() {
    return x;
  }

  double? gety() {
    return y;
  }

  void setx(double x) {
    this.x = x;
  }

  void sety(double y) {
    this.y = y;
  }
}

double? distance(Points p1, Points p2) {
  double dist;
  dist = sqrt(
      (p2.x! - p1.x!) * (p2.x! - p1.x!) + ((p2.y! - p1.y!) * (p2.y! - p1.y!)));
  return dist;
}

void doubler(Points p1) {
  var currentx = p1.getx();
  currentx = currentx! * 2;
  p1.setx(currentx);

  var currenty = p1.gety();
  currenty = currenty! * 2;
  p1.sety(currenty);
}

void main() {
  Points p1 = Points(2.5, 3.5);
  Points p2 = Points(2.0, 3.0);
  print(distance(p1, p2));
  doubler(p2);
  p2.printpt();

  // 6 Variables
  int var1;
  String? var2;
  double? var3;
  bool var4;
  var foo = [];
  var foo1 = [];
}
