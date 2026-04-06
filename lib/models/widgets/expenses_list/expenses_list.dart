import 'package:flutter/material.dart';
import 'package:spendo_app/models/expense.dart';
import 'package:spendo_app/models/widgets/expenses_list/expenses_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExepenseItem(expenses[index]),
    );
  }
}
