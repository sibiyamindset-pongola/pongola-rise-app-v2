import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  final List<Map<String, String>> courses = const [
    {
      'title': 'Basic Computer Skills',
      'provider': 'Google Digital Skills',
    },
    {
      'title': 'CV Writing Masterclass',
      'provider': 'Pongola Rise Academy',
    },
    {
      'title': 'Entrepreneurship Basics',
      'provider': 'Future Learn',
    },
    {
      'title': 'Free Coding Course',
      'provider': 'freeCodeCamp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final item = courses[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.school),
              title: Text(item['title']!),
              subtitle: Text(item['provider']!),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Open'),
              ),
            ),
          );
        },
      ),
    );
  }
}
