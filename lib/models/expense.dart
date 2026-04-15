import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work, transport, bills}

const categoryIcons= {
  Category.food: Icons.restaurant,          
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.sports_esports,   
  Category.work: Icons.work,
  Category.transport: Icons.directions_car,
  Category.bills: Icons.receipt_long,
};

class Expense {
  Expense({
    String? id, 
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = id ?? uuid.v4();
  
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate{
    return formatter.format(date);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'amount': amount,
      'date': date.toIso8601String(),
      'category': category.name,
    };
  }

  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'], 
      title: map['title'],
      amount: (map['amount'] as num).toDouble(),
      date: DateTime.parse(map['date']),
      category: Category.values.firstWhere((c) => c.name == map['category']),
    );
  }
}

class ExpenseBucket{
  const ExpenseBucket({required this.category, required this.expenses});

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category) : expenses = allExpenses.where((expense) => expense.category == category).toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses{
    double sum=0;

    for(final expense in expenses){
      sum += expense.amount;
    }

    return sum;
  }
}