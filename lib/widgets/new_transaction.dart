import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              // onChanged: (value) => myTitle = value,
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            TextButton(
              onPressed: () {
                print(titleController.text);
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text(
                "Add Expense",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
