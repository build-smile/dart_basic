import 'package:flutter/material.dart';

void main() {
  //variable
  String firstname = 'John';
  String lastname = 'Corner';
  int number = 0;
  double gpa = 2.9;
  bool isTrue = true;

  //allow null
  String? fullname = null;
  String? student;
  print('$firstname $lastname');

  //if else
  double point = 90;
  if (point >= 80) {
    print('A');
  } else if (point >= 70) {
    print('B');
  } else if (point >= 60) {
    print('C');
  } else if (point >= 50) {
    print('D');
  } else {
    print('F');
  }

  //for loop
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  int i = 0;
  while (i <= 10) {
    print(i);
    i++;
  }

  //เรียกใช้ class
  Book book = Book(
    id: 1,
    name: 'Animal',
    price: 300,
  );

  List<Book> books = [
    Book(id: 1, name: 'A', price: 100),
    Book(id: 2, name: 'B', price: 200),
    Book(id: 3, name: 'C', price: 300),
    Book(id: 4, name: 'D', price: 400),
  ];

  books.add(Book(id: 5, name: 'E', price: 500));

  books.removeAt(0);

  var a = ['1','2'];
  a.map((e) => null)
  
  //for in
  for (Book book in books) {
    print(
        'id: ${book.id} name: ${book.name} desc: ${book.desc} price: ${book.price}');
  }
  sayHi1();
}

calculatePoint(int point) {
  if (point >= 80) {
    print('A');
  } else if (point >= 70) {
    print('B');
  } else if (point >= 60) {
    print('C');
  } else if (point >= 50) {
    print('D');
  } else {
    print('F');
  }
}

String getGrade({required int point}) {
  if (point >= 80) {
    return 'A';
  } else if (point >= 70) {
    return 'B';
  } else if (point >= 60) {
    return 'C';
  } else if (point >= 50) {
    return 'D';
  } else {
    return 'F';
  }
}

class Book {
  int id;
  String name;
  String? desc;
  double price;
  Book({
    required this.id,
    required this.name,
    required this.price,
    this.desc,
  });
}

sayHi1() async {
  print('hi');
  int i = 0;
  await Future.delayed(const Duration(seconds: 3), () {});
  print('My name is bob');
}

sayHi2() async {
  print('hi');
  int i = 0;
  Future.delayed(const Duration(seconds: 5), () {});
  print('My name is bob');
}
