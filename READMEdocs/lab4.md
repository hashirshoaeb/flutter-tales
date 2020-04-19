# Task

Create an inheritance hierarchy that a bank might use to represent customers' bank accounts. All customers each having an account no. at this bank can deposit (i.e., credit) money into their accounts and withdraw (i.e., debit) money from their accounts. More specific types of accounts also exist. CreditCardAccount, for instance, provide the user the facility to make money transactions using ATM the money they hold. Checking accounts, on the other hand, charge a fee per transaction (i.e., credit or debit). Create an inheritance hierarchy containing base class Account and derived classes CreditCardAccount and CheckingAccount that inherit from class Account. Base class Account should include one data member of type double to represent the account balance. Customer’s name and account no.

The account no. should be unique and assigned in the order in which instances are created The class should provide a constructor that receives an initial balance and uses it to initialize the data member. The constructor should validate the initial balance to ensure that it is greater than or equal to 0.0. If not, the balance should be set to 0.0 and the constructor should display an error message, indicating that the initial balance was invalid. The class should provide following member functions.

- Member function credit should add an amount to the current balance.
- Member function debit should withdraw money from the Account and ensure that the debit amount does not exceed the Account's balance. If it does, the balance should be left unchanged and the function should print the message "Debit amount exceeded account balance.
- Member function getBalance should return the current balance.
- Member function getAccountNo.

Derived class CreditCardAccount should inherit the functionality of an Account, but also include a data member pinnumber set by the customer.

- Constructor should receive the initial balance, as well as pin number.
- It should provide a public member function resetpin

Derived class CheckingAccount should inherit from base class Account and include an additional data member of type double that represents the fee charged per transaction to all the customers.

- CheckingAccount's constructor should receive the initial balance, as well as a parameter indicating a fee amount.
  Class CheckingAccount should redefine member functions credit and debit so that they subtract the fee from the account balance whenever either transaction is performed successfully. CheckingAccount's versions of these functions should invoke the base-class Account version to perform the updates to an account balance. CheckingAccount's debit function should charge a fee only if money is actually withdrawn (i.e., the debit amount does not exceed the account balance). After defining the classes in this hierarchy, write a program that creates objects of each class and tests their member functions.

# Code

```dart
class Account {
  double accountBalance = 0;
  var accountNumber = 0;
  static int accCount = 0;

  Account(double initialBalance){
    if (initialBalance < 0) print("The initial balance was invalid.");
    else this.accountBalance = initialBalance;
    accountNumber = accCount;
    accCount++;
  }

  credit(double amount){
    accountBalance += amount;
  }

  debit(double amount){
    if (amount <= accountBalance) accountBalance -= amount;
    else print ("Debit amount exceeded account balance.");
  }

  getBalance() {return accountBalance;}

  getAccountNo() {return accountNumber;}
}

class CreditCardAccount extends Account {
  int pinNumber = 0;

  CreditCardAccount(this.pinNumber, double initialBalance) : super(initialBalance);

  resetPin(int pinNumber) {
    this.pinNumber = pinNumber;
  }
}

class CheckingAccount extends Account {
  double feeCharges = 0;

  CheckingAccount(this.feeCharges, double initialBalance) : super(initialBalance);

  @override
  credit(double amount){
    super.credit(amount);
    this.accountBalance-=feeCharges;
  }

  @override
  debit(double amount){
    super.debit(amount+feeCharges);
  }
}

void main (){
  // few test cases
  var acc1 = new CreditCardAccount(111, 2000);
  print(acc1.getAccountNo());
  print(acc1.getBalance());
  var acc2 = new CheckingAccount(20, 3000);
  print(acc2.getAccountNo());
  print(acc2.getBalance());
  acc2.credit(1000);
  print(acc2.getBalance());
  acc2.debit(4000);
  var acc3 = new CreditCardAccount(0231, -4);
  print(acc3.getAccountNo());
  print(acc3.getBalance());
}
```

# Output

```bash
0
2000
1
3000
3980
Debit amount exceeded account balance.
The initial balance was invalid.
2
0
```
