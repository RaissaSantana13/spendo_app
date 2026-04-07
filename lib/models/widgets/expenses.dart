import 'package:flutter/material.dart';
import 'package:spendo_app/models/widgets/expenses_list/expenses_list.dart';
import 'package:spendo_app/models/expense.dart';
import 'package:spendo_app/models/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 35.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      clipBehavior: Clip.hardEdge,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // fundo claro bonito

      appBar: AppBar(
        backgroundColor: const Color(0xFF5C6BC0), // roxo/indigo moderno
        title: const Text(
          'Spendo',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFF5C6BC0).withOpacity(0.1),
            ),
            child: const Text(
              'The chart',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF5C6BC0),
              ),
            ),
          ),

          Expanded(child: ExpenseList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
