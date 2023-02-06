import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController),
            TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController),
            TextButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
                print(amountController);
                print(titleController);
              },
              child: Text('Add transaction'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
