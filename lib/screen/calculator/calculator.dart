import 'package:flutter/material.dart';

class CalculationScreen extends StatefulWidget {
  @override
  _CalculationScreenState createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tôi mua'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
