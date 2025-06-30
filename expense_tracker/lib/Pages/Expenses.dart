import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
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
    );
  }
}
