import 'package:uuid/uuid.dart';

//create unique id using uuid pkg
final uuid = Uuid().v4();

enum Category { food, travel, lesure, work }

class ExpenseModel {
  ExpenseModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid;

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
