class Bankact{
double? balance;
Bankact(this.balance);
showbalance(){
print("Act name :Ashu");
print("Current Balance : $balance");

  }
}

class CurrentAct extends Bankact {
  double? deposit;
  double? prev_balance;
  double? lastdeposit;

  CurrentAct(double balance, this.deposit, double this.prev_balance, this.lastdeposit) : super(balance);

  @override
  updateshowbalance(double amount) {
    prev_balance = balance;
    balance += amount;
    lastdeposit = amount;
    super.showbalance(); // calling parent method without parameters
  }
}