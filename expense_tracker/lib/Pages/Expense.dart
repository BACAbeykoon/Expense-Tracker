import 'package:expense_tracker/Models/expense_model.dart';
import 'package:expense_tracker/widgets/expense_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  //expense list
  final List<ExpenseModel> _expenseList = [
    ExpenseModel(
      title: "Ice Cream",
      amount: 12.5,
      date: DateTime.now(),
      category: Category.food,
    ),
    ExpenseModel(
      title: "Hiking",
      amount: 15,
      date: DateTime.now(),
      category: Category.lesure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Master"),
        backgroundColor: (const Color.fromARGB(255, 195, 134, 248)),
        elevation: 0,
        actions: [
          Container(
            color: Colors.amberAccent,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),

      body: Column(children: [ExpenseList(expenseList: _expenseList)]),
    );
  }
}
