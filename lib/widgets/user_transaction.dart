import "package:flutter/material.dart";

import '../models/transaction.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: "1",
      title: "Milk",
      amount: 2.55,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Egg",
      amount: 5.05,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(_userTransaction),
      ],
    );
  }
}
