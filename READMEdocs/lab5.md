# Task

Create a Dart class Employee. Where each employee has id and a list of Sale. Create a separate class Sale each sale has record of the amount_earned against the employee id. e.g.

```dart
class Sale {
    int employee_id;
    double amount_earned;
    }
```

In main create a growable list of employee. Insert/add 5 employee’s data. Sort the list according to the amount_earned. In case of amount earned < 100 remove those employees.

# Code

```dart
// class Employee
// data member, id, type int
// data member, sale, type class Sale
// class Sale
// data member, amountEarned, type double
// data member, employeeID, type int

class Sale {
  int employeeID;
  double amountEarned;

  Sale({this.employeeID, this.amountEarned});

  @override
  String toString() {
    return ("{employeeID: $employeeID , amountEarned: $amountEarned }");
  }
}

class Employee {
  int employeeID;
  List<Sale> sale;

  Employee({this.employeeID, List<Sale> s}) {
    // copy constructor
    sale = new List<Sale>.from(s, growable: true);
  }

  double totalSale() {
    double totalSale = 0;
    sale.forEach((val) {
      totalSale += val.amountEarned;
    });
    return totalSale;
  }

  @override
  String toString() {
    return ("{ employeeID: $employeeID \n${sale.map((val) => '${val.toString()}\n').toString()}\n}");
  }
}

void main() {
  Employee e1 = new Employee(employeeID: 1, s: [
    new Sale(employeeID: 1, amountEarned: 10),
    new Sale(employeeID: 1, amountEarned: 100),
    new Sale(employeeID: 1, amountEarned: 20)
  ]);
  Employee e2 = new Employee(employeeID: 2, s: [
    new Sale(employeeID: 2, amountEarned: 70),
    new Sale(employeeID: 2, amountEarned: 2),
    new Sale(employeeID: 2, amountEarned: 30)
  ]);
  Employee e3 = new Employee(employeeID: 3, s: [
    new Sale(employeeID: 3, amountEarned: 60),
    new Sale(employeeID: 3, amountEarned: 3),
    new Sale(employeeID: 3, amountEarned: 40)
  ]);
  Employee e4 = new Employee(employeeID: 4, s: [
    new Sale(employeeID: 4, amountEarned: 40),
    new Sale(employeeID: 4, amountEarned: 4),
    new Sale(employeeID: 4, amountEarned: 50)
  ]);
  Employee e5 = new Employee(employeeID: 5, s: [
    new Sale(employeeID: 5, amountEarned: 50),
    new Sale(employeeID: 5, amountEarned: 5),
    new Sale(employeeID: 5, amountEarned: 60)
  ]);

  List<Employee> list = new List<Employee>()
    ..add(e1)
    ..add(e2)
    ..add(e3)
    ..add(e4)
    ..add(e5);
  print("Printing Eployees...");
  list.forEach((val) {
    print(val.toString());
    print("Total amount earned ${val.totalSale()}");
  });

  list.sort((a, b) {
    return a.totalSale().compareTo(b.totalSale());
  });
  print("\n");
  print("Sorting Eployees...");
  list.forEach((val) {
    print(val.toString());
    print("Total amount earned ${val.totalSale()}");
  });
  print("\n");
  print("Removing Eployees...");
  list.removeWhere((val) => val.totalSale() < 100);
  list.forEach((val) {
    print(val.toString());
    print("Total amount earned ${val.totalSale()}");
  });
}

```

# Output

```bash
Printing Eployees...
{ employeeID: 1
({employeeID: 1 , amountEarned: 10 }
, {employeeID: 1 , amountEarned: 100 }
, {employeeID: 1 , amountEarned: 20 }
)
}
Total amount earned 130
{ employeeID: 2
({employeeID: 2 , amountEarned: 70 }
, {employeeID: 2 , amountEarned: 2 }
, {employeeID: 2 , amountEarned: 30 }
)
}
Total amount earned 102
{ employeeID: 3
({employeeID: 3 , amountEarned: 60 }
, {employeeID: 3 , amountEarned: 3 }
, {employeeID: 3 , amountEarned: 40 }
)
}
Total amount earned 103
{ employeeID: 4
({employeeID: 4 , amountEarned: 40 }
, {employeeID: 4 , amountEarned: 4 }
, {employeeID: 4 , amountEarned: 50 }
)
}
Total amount earned 94
{ employeeID: 5
({employeeID: 5 , amountEarned: 50 }
, {employeeID: 5 , amountEarned: 5 }
, {employeeID: 5 , amountEarned: 60 }
)
}
Total amount earned 115


Sorting Eployees...
{ employeeID: 4
({employeeID: 4 , amountEarned: 40 }
, {employeeID: 4 , amountEarned: 4 }
, {employeeID: 4 , amountEarned: 50 }
)
}
Total amount earned 94
{ employeeID: 2
({employeeID: 2 , amountEarned: 70 }
, {employeeID: 2 , amountEarned: 2 }
, {employeeID: 2 , amountEarned: 30 }
)
}
Total amount earned 102
{ employeeID: 3
({employeeID: 3 , amountEarned: 60 }
, {employeeID: 3 , amountEarned: 3 }
, {employeeID: 3 , amountEarned: 40 }
)
}
Total amount earned 103
{ employeeID: 5
({employeeID: 5 , amountEarned: 50 }
, {employeeID: 5 , amountEarned: 5 }
, {employeeID: 5 , amountEarned: 60 }
)
}
Total amount earned 115
{ employeeID: 1
({employeeID: 1 , amountEarned: 10 }
, {employeeID: 1 , amountEarned: 100 }
, {employeeID: 1 , amountEarned: 20 }
)
}
Total amount earned 130


Removing Eployees...
{ employeeID: 2
({employeeID: 2 , amountEarned: 70 }
, {employeeID: 2 , amountEarned: 2 }
, {employeeID: 2 , amountEarned: 30 }
)
}
Total amount earned 102
{ employeeID: 3
({employeeID: 3 , amountEarned: 60 }
, {employeeID: 3 , amountEarned: 3 }
, {employeeID: 3 , amountEarned: 40 }
)
}
Total amount earned 103
{ employeeID: 5
({employeeID: 5 , amountEarned: 50 }
, {employeeID: 5 , amountEarned: 5 }
, {employeeID: 5 , amountEarned: 60 }
)
}
Total amount earned 115
{ employeeID: 1
({employeeID: 1 , amountEarned: 10 }
, {employeeID: 1 , amountEarned: 100 }
, {employeeID: 1 , amountEarned: 20 }
)
}
Total amount earned 130
```
