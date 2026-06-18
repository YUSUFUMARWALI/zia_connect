import 'package:flutter/material.dart';

class PrayerScreen extends StatelessWidget {
  const PrayerScreen({super.key});

  final List<Map<String, String>> prayers = const [
    {'name': 'Fajr', 'time': '5:05 AM'},
    {'name': 'Dhuhr', 'time': '12:35 PM'},
    {'name': 'Asr', 'time': '3:55 PM'},
    {'name': 'Maghrib', 'time': '6:52 PM'},
    {'name': 'Isha', 'time': '8:10 PM'},
  ];

  Widget prayerTile(Map<String, String> prayer) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.mosque),
        title: Text(prayer['name']!),
        trailing: Text(
          prayer['time']!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prayer Times'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Prayer schedule for Zamfara International Airport',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...prayers.map(prayerTile),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.explore),
              title: const Text('Qiblah Direction'),
              subtitle: const Text('Coming soon'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
