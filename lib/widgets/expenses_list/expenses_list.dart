import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemovedExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemovedExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
          background: Container(color: Theme.of(context).colorScheme.error,
          margin: const EdgeInsets.symmetric(horizontal: 16),),
          onDismissed: (direction){
          onRemovedExpense(expenses[index]);
          },
          child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
