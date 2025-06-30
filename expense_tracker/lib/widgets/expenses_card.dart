import 'package:expense_tracker/Models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpennseCard extends StatelessWidget {
  const ExpennseCard({super.key, required this.expense});
  final ExpenseModel expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 246, 252, 254),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleLarge),

            Row(
              children: [
                Text(expense.amount.toStringAsFixed(2)),

                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.trending_down),
                    const SizedBox(height: 15),
                    Text(expense.date.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
