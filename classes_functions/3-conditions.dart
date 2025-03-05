class BankAccount {
	String owner;
	double _balance;

	BankAccount(this.owner, this._balance);

	void deposit(double amount) {
		_balance += amount;
		print("Deposit \$${amount}, New Balance ${_balance}");
	}

	double get simple_interest {
		double rate = 0.1;
		double time = 5;
		return _balance * rate * time;
	}

	double get balance => _balance;
}

void main () {
	BankAccount acc = BankAccount("Churchil", 123);
	double balance = acc.balance;
	double si = acc.simple_interest;
	print("Balance Remaining \$${balance} and simple interest \$${si}");
}


