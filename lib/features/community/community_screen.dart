import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  final List<Map<String, String>> posts = const [
    {
      'title': 'Ward 4 Community Meeting',
      'date': 'Saturday 10:00',
    },
    {
      'title': 'Youth Skills Workshop',
      'date': 'Monday 14:00',
    },
    {
      'title': 'Clean-up Campaign',
      'date': 'Friday 08:00',
    },
    {
      'title': 'Local Soccer Tournament',
      'date': 'Next Weekend',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final item = posts[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.people),
              title: Text(item['title']!),
              subtitle: Text(item['date']!),
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
