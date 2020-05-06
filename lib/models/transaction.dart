// id
// amount
// date

class Transaction {
  int id;
  String title;
  double amount;
  DateTime date = new DateTime.now();

  Transaction({this.id, this.title, this.date, this.amount});
}
