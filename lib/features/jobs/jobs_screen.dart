import 'package:flutter/material.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  final List<Map<String, String>> jobs = const [
    {
      'title': 'Shop Assistant',
      'company': 'Pongola Supermarket',
      'location': 'Pongola',
    },
    {
      'title': 'Driver',
      'company': 'Local Logistics',
      'location': 'Pongola',
    },
    {
      'title': 'Cashier',
      'company': 'Retail Store',
      'location': 'Pongola',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobs'),
      ),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.work),
              title: Text(job['title']!),
              subtitle: Text(
                '${job['company']} • ${job['location']}',
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Apply'),
              ),
            ),
          );
        },
      ),
    );
  }
}
