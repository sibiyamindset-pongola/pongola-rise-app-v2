import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  final List<Map<String, String>> businesses = const [
    {
      'name': 'Pongola Bakery',
      'type': 'Food & Bakery',
    },
    {
      'name': 'Mthethwa Repairs',
      'type': 'Phone Repairs',
    },
    {
      'name': 'Rise Fashion',
      'type': 'Clothing Store',
    },
    {
      'name': 'Pongola Taxis',
      'type': 'Transport',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Businesses'),
      ),
      body: ListView.builder(
        itemCount: businesses.length,
        itemBuilder: (context, index) {
          final item = businesses[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.store),
              title: Text(item['name']!),
              subtitle: Text(item['type']!),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('View'),
              ),
            ),
          );
        },
      ),
    );
  }
}
