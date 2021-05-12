import 'package:flutter/material.dart';

class Addview extends StatefulWidget {
  @override
  _AddviewState createState() => _AddviewState();
}

class _AddviewState extends State<Addview> {
  List<String> coins = ['bitcoin', 'tether', 'ethereum'];

  String dropdownValue = "bitcoin";
  TextEditingController _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          DropdownButton(
            value: dropdownValue,
            onChanged: (String value) {
              setState(() {
                dropdownValue = value;
              });
            },
            items: coins.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }),
          ),
        ],
      ),
    );
  }
}
