void main() {

	var n = Num();
	int number = 0;

	if (n != null)
		number = n.num;
	
	print("Number -> $number");
}

class Num {
	int num = 10;
}
