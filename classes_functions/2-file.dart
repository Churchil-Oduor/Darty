class BankAccount {
  String owner;
  double _balance;

  BankAccount(this.owner, this._balance);

  void deposit(double amount) {
    _balance += amount;
    print("Deposit \$${amount}, New Balance ${_balance}");
  }

  double get balance => _balance;

  void setbalance(double x) {
    this._balance = x;
    print(_balance);
  }
}

void main() {
  BankAccount acc = BankAccount("Churchil", 123);
  double balance = acc.balance;
  acc.setbalance(10);

  print("Balance Remaining ${balance}");
}
