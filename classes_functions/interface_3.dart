abstract class Wheels {

	int speed = 0;

	void setSpeed(int speed);
	int get mySpeed;

	void move();
}


class Car implements Wheels {

	int speed = 0;

	@override
	void setSpeed(int _speed) {
		this.speed = _speed + 1;
	}

	@override
	int get mySpeed => this.speed;

	@override
	void move() {
		print("Moving at a speed of ${this.speed}");
	}
}


void main() {
	Car c = Car();
	c.setSpeed(12);
	c.move();
}
