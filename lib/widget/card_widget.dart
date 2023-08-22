import 'package:flutter/material.dart';

import '../model/bank_model.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  Bank? selectedBank;
  List<Bank> listBanks = [
    Bank(name: "Bank A"),
    Bank(name: "Bank B"),
    Bank(name: "Bank C"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<Bank>(
              value: selectedBank,
              onChanged: (Bank? newValue) {
                setState(() {
                  selectedBank = newValue;
                });
              },
              items: listBanks.map((Bank bank) {
                return DropdownMenuItem<Bank>(
                  value: bank,
                  child: Text(bank.name),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            selectedBank != null
                ? Text('Selected Bank: ${selectedBank!.name}')
                : Text('Select a bank'),
          ],
        ),
      ),
    );;
  }
}
