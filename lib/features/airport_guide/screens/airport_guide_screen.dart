import 'package:flutter/material.dart';

class AirportGuideScreen extends StatelessWidget {
  const AirportGuideScreen({super.key});

  final List<Map<String, String>> guideItems = const [
    {
      'title': 'Check-in Counters',
      'description': 'Visit your airline counter for baggage drop and boarding pass confirmation.',
      'icon': 'check',
    },
    {
      'title': 'Security Screening',
      'description': 'Keep your ID, ticket, and luggage ready for inspection.',
      'icon': 'security',
    },
    {
      'title': 'Prayer Room',
      'description': 'A dedicated prayer area is available for passengers inside the terminal.',
      'icon': 'mosque',
    },
    {
      'title': 'Baggage Claim',
      'description': 'Arriving passengers can collect luggage at the baggage claim area.',
      'icon': 'luggage',
    },
    {
      'title': 'ATM & Payments',
      'description': 'ATM and payment support points are available near the main hall.',
      'icon': 'atm',
    },
    {
      'title': 'Food & Refreshments',
      'description': 'Restaurants and refreshment points are available within the airport.',
      'icon': 'food',
    },
  ];

  IconData getIcon(String icon) {
    switch (icon) {
      case 'check':
        return Icons.fact_check;
      case 'security':
        return Icons.security;
      case 'mosque':
        return Icons.mosque;
      case 'luggage':
        return Icons.luggage;
      case 'atm':
        return Icons.atm;
      case 'food':
        return Icons.restaurant;
      default:
        return Icons.info;
    }
  }

  Widget guideCard(Map<String, String> item) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(getIcon(item['icon']!)),
        ),
        title: Text(
          item['title']!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(item['description']!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Airport Guide'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: guideItems.map(guideCard).toList(),
      ),
    );
  }
}
