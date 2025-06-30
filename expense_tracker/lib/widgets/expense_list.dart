import 'package:expense_tracker/Models/expense_model.dart';
import 'package:expense_tracker/widgets/expenses_card.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenseList});

  final List<ExpenseModel> expenseList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenseList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: ExpennseCard(expense: expenseList[index]),
          );
        },
      ),
    );
  }
}
