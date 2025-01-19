import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal Scrolling ',
      home: HorizontalScroll(),
    );
  }
}

class HorizontalScroll extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'Name': 'Aditya', 'Age': '19', 'City': 'Pune'},
    {'Name': 'Adiraj', 'Age': '20', 'City': 'Pune'},
    {'Name': 'Pratik', 'Age': '22', 'City': 'Satara'},
    {'Name': 'Rugved', 'Age': '28', 'City': 'Satara'},
    {'Name': 'Vedant', 'Age': '26', 'City': 'Wai'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Scrolling '),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('City')),
          ],
          rows: data.map((row) {
            return DataRow(cells: [
              DataCell(Text(row['Name']!)),
              DataCell(Text(row['Age']!)),
              DataCell(Text(row['City']!)),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
