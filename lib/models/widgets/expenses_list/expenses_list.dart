import 'package:flutter/material.dart';
import 'package:spendo_app/models/expense.dart';
import 'package:spendo_app/models/widgets/expenses_list/expenses_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        direction: DismissDirection.endToStart,
        background: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 24),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error.withOpacity(0.75),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Icon(Icons.delete_sweep, color: Colors.white, size: 30),
        ),

        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExepenseItem(expenses[index]),
      ),
    );
  }
}
