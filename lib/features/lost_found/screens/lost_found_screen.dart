import 'package:flutter/material.dart';

class LostFoundScreen extends StatelessWidget {
  const LostFoundScreen({super.key});

  final List<Map<String, String>> items = const [
    {
      'item': 'Black Travel Bag',
      'location': 'Arrival Hall',
      'status': 'Found',
    },
    {
      'item': 'Nigerian Passport',
      'location': 'Security Screening Area',
      'status': 'Reported',
    },
    {
      'item': 'Phone Charger',
      'location': 'Waiting Lounge',
      'status': 'Found',
    },
  ];

  Widget itemCard(Map<String, String> item) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: const Icon(Icons.luggage),
        title: Text(
          item['item']!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Location: ${item['location']}'),
        trailing: Chip(label: Text(item['status']!)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lost & Found'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ...items.map(itemCard),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Report Lost Item'),
          ),
        ],
      ),
    );
  }
}
