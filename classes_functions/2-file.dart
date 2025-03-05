class BankAccount {
	String owner;
	double _balance;

	BankAccount(this.owner, this._balance);

	void deposit(double amount) {
		_balance += amount;
		print("Deposit \$${amount}, New Balance ${_balance}");
	}

	double get balance => _balance;
}

void main () {
	BankAccount acc = BankAccount("Churchil", 123);
	double balance = acc.balance;

	print("Balance Remaining ${balance}");
}


