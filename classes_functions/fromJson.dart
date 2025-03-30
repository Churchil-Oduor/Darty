class Point {
  final double x;
  final double y;
  Point(this.x, this.y);

  double get getX => x;
}

void main() {
  Point A = Point(2, 4);
  print(A.getX);
}
