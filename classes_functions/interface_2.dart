class Vehicle {
	void move() {
	   print("Car moving!!");
	}
}

class Audi implements Vehicle {
	@override
	void move() {
		print("Vroom!!");
	}
}

void main() {
	Audi audi = Audi();
	audi.move();
}
