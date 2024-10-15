import 'package:flutter/material.dart';
import 'package:my_wallet_app/widgets/cardSection.dart';
import 'package:my_wallet_app/widgets/data.dart';
import 'package:my_wallet_app/widgets/expenses.dart';
import 'package:my_wallet_app/widgets/header.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(fontFamily: 'Circular'),
  )); // MaterialApp
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ), // Container
          Expanded(child: CardSection()),
          Expanded(child: ExpensesSection())
        ],
      ),
    );
  }
}
