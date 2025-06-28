void main() {
  BankAct myAct = BankAct("Ashir", 1300);
  myAct.deposit(800);

  print("--------------");
  myAct.withdrawal(500);

  print("------------");
  myAct.checkBalance();

  print("-------------");
  myAct.accountStatement();
}

class BankAct {
  String accountHolder;
  double balance;
  double? lastDeposit;
  double? lastWithdrawal;
  double? prevBalance;

  BankAct(this.accountHolder, this.balance);

  void deposit(double amount) {
    prevBalance = balance;
    balance += amount;
    lastDeposit = amount;
    print("Deposit value is $amount");
    print("New Balance is $balance");
  }

  void withdrawal(double amount) {
    if (amount <= balance) {
      prevBalance = balance;
      balance -= amount;
      lastWithdrawal = amount;
      print("Withdrawal Amount is $amount");
      print("Current Balance is $balance");
    } else {
      print("❌ Insufficient Balance");
    }
  }

  void checkBalance() {
    print("Account holder is $accountHolder");
    print("Current Balance is $balance");
  }

  void accountStatement() {
    print("========== Account Statement ==========");
    print("Account Holder: $accountHolder");
    print("Previous Balance: ${prevBalance ?? "N/A"}");
    print("Last Deposit: ${lastDeposit ?? "N/A"}");
    print("Last Withdrawal: ${lastWithdrawal ?? "N/A"}");
    print("Current Balance: $balance");
    print("=======================================");
  }
}
