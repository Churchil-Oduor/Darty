abstract class Animal {
	void makeSound();
}


class Cow implements Animal{

	@override
	void makeSound() {
		print("Mooow!!");
	}
}

void main() {
	Cow c = Cow();
	c.makeSound();
}

