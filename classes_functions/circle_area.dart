class Circle {
	double _radius;
	Circle(this._radius);

	double get area => 3.142 * _radius * _radius;

}

void main() {

	Circle c = Circle(7);
	double area  = c.area;
	print("Area of a Circle ${area}");
}


