import 'package:flutter/material.dart';
import 'features/jobs/jobs_screen.dart';
import 'features/learn/learn_screen.dart';
import 'features/business/business_screen.dart';

void main() {
  runApp(const PongolaRiseApp());
}

class PongolaRiseApp extends StatelessWidget {
  const PongolaRiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pongola Rise',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget menuButton({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Padding(
          padding: const EdgeInsets.all(14),
          child: Text(
            text,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        onPressed: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pongola Rise"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            const Text(
              "Empowering Pongola Community",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),

            menuButton(
              icon: Icons.work,
              text: "Jobs",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const JobsScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            menuButton(
              icon: Icons.school,
              text: "Learn",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LearnScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            menuButton(
              icon: Icons.store,
              text: "Businesses",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const BusinessScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
