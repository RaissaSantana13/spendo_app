import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:spendo_app/models/expense.dart';

class ExpenseService {
  final _supabase = Supabase.instance.client;

  Future<List<Expense>> fetchExpenses() async {
    final response = await _supabase
        .from('expenses')
        .select()
        .order('date', ascending: false);
    
    return (response as List).map((data) => Expense.fromMap(data)).toList();
  }

  Future<void> insertExpense(Expense expense) async {
    await _supabase.from('expenses').insert(expense.toMap());
  }

  Future<void> deleteExpense(String id) async {
    await _supabase.from('expenses').delete().eq('id', id);
  }
}