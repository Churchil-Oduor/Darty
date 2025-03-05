double xOrigin = 0;
double yOrigin = 0;

class Point {
	double _x;
	double _y;

	Point(this._x, this._y);
	Point.origin() : _x = xOrigin, _y = yOrigin;

	void setX(double x_) {
		this._x = x_;
	}
	double get getX => this._x;

	void setY(double y_) {
		this._y = y_;
	}

	double get getY => this._y;
}

void main() {
	Point p = Point.origin();
	p.setX(3);
	double y = p.getY;
	double x = p.getX;
	print("Origin is at (${x}, ${y})");
}
