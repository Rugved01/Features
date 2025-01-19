import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Selector ',
      home: DropdownSelector(),
    );
  }
}

class DropdownSelector extends StatefulWidget {
  @override
  _DropdownSelectorState createState() => _DropdownSelectorState();
}

class _DropdownSelectorState extends State<DropdownSelector> {
  String? selectedFruit;
  final List<String> fruits = [
    'Apple',
    'Banana',
    'Mango',
    'Guava',
    'STrawberry'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Selector '),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: selectedFruit,
          hint: Text('Select a Fruit'),
          items: fruits.map((String fruit) {
            return DropdownMenuItem<String>(
              value: fruit,
              child: Text(fruit),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedFruit = newValue;
            });
          },
        ),
      ),
    );
  }
}
