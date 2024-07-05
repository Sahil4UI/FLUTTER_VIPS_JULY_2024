class Account {
  String? cust_name;
  String? acc_no;
  double? blc;

  Account(this.cust_name, this.acc_no, this.blc);

  void withDraw(double amount) {
    print("Withdraw Function called...");
  }

  void deposit(double amount) {
    print("Deposit Function called");
  }

  showDetails()
  {
    print("Account No is ${this.acc_no}");
    print("Account No is ${this.cust_name}");
    print("Account No is ${this.blc}");
  }

  roi(){
    print("5%");
  }
}

class SavingAccount extends Account {
  SavingAccount(String cust_name, String acc_no,
   double blc) 
  : super(cust_name,acc_no, blc);

 @override
  void withDraw(double amount)
  {
      blc = (blc!-amount);
      print("Remaining Blc is ${blc}");
  }

  @override
  roi(){
    print("6.99% ROI");
  }

  doorToDoor()
  {
    print("door to door facility is available");
  }

}


class CurrentAccount extends Account {
  CurrentAccount(String cust_name, String acc_no,
   double blc) 
  : super(cust_name,acc_no, blc);

 @override
  void withDraw(double amount)
  {
      blc = (blc!-amount);
      print("Remaining Blc is ${blc}");
  }

  @override
  roi(){
    print("5.5% ROI is chargable in CA");
  }

  odLimit()
  {
    print("OD LIMIT is 10000");
  }

  noOfTransaction()
  {
    print("Transaction limit is 500 per day");
  }

}


void commonCaller(Account account)
{
    if (account is SavingAccount)
    {
      // downcasting
        SavingAccount obj = account;
        obj.deposit(1000);
        obj.doorToDoor();
        obj.roi();
        obj.showDetails();
    }
    else if (account is CurrentAccount)
    {
        CurrentAccount obj = account;
        obj.deposit(1000);
        obj.odLimit();
        obj.roi();
        obj.noOfTransaction();
        obj.showDetails();
    }
}
void main() {
  // upcasting
  commonCaller(new SavingAccount("Rohit","98765430",20000));
  // SavingAccount obj = new SavingAccount("Ram","8675432",100000);
  // print(obj is CurrentAccount);
 
}
