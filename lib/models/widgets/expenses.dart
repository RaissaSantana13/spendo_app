import 'package:flutter/material.dart';
import 'package:spendo_app/models/widgets/chart/chart.dart';
import 'package:spendo_app/models/widgets/expenses_list/expenses_list.dart';
import 'package:spendo_app/models/expense.dart';
import 'package:spendo_app/models/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({
    super.key,
    required this.currentThemeMode,
    required this.onToggleTheme,
  });

  final ThemeMode currentThemeMode;
  final void Function(bool isCurrentlyDark) onToggleTheme;

  @override
  State<Expenses> createState() => _ExpensesState();
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
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      clipBehavior: Clip.hardEdge,
      builder: (ctx) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.87,
        child: NewExpense(onAddExpense: _addExpense),
      ),
    );
  }

  void _addExpense(Expense expense) {
    setState(() => _registeredExpenses.add(expense));
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() => _registeredExpenses.remove(expense));
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense deleted.'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () =>
              setState(() => _registeredExpenses.insert(expenseIndex, expense)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    Widget mainContent = const Center(
      child: Text('No expenses found. Start adding some!'),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpenseList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    final isDarkMode = widget.currentThemeMode == ThemeMode.dark ||
        (widget.currentThemeMode == ThemeMode.system &&
            MediaQuery.of(context).platformBrightness == Brightness.dark);

    final themeIcon = isDarkMode ? Icons.light_mode : Icons.dark_mode;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => widget.onToggleTheme(isDarkMode),
          icon: Icon(themeIcon),
        ),
        title: const Text('Spendo'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: width < 600
            ? Column(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Chart(expenses: _registeredExpenses),
                  ),
                  Expanded(
                    flex: 2,
                    child: mainContent,
                  ),
                ],
              )
            : Row(
                children: [
                  Expanded(child: Chart(expenses: _registeredExpenses)),
                  Expanded(child: mainContent),
                ],
              ),
      ),
    );
  }
}