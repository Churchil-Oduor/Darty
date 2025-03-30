class Person {
	String name;
	int age;

	Person(this.name, this.age);

	void greet() {
		print("Hello, my name is $name and I am $age old");
	}
}

void main() {
	Person p1 = Person("Churchil", 24);
	p1.greet();
  
}
