import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  Widget supportTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }

  Widget faqTile(String question, String answer) {
    return Card(
      child: ExpansionTile(
        title: Text(question, style: const TextStyle(fontWeight: FontWeight.bold)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(answer),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Support'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          supportTile(
            icon: Icons.phone,
            title: 'Airport Support',
            subtitle: '+234 000 000 0000',
          ),
          supportTile(
            icon: Icons.emergency,
            title: 'Emergency Contact',
            subtitle: 'Airport security and medical assistance',
          ),
          supportTile(
            icon: Icons.email,
            title: 'Email Support',
            subtitle: 'support@ziaconnect.com',
          ),
          const SizedBox(height: 20),
          const Text(
            'Frequently Asked Questions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          faqTile(
            'How early should I arrive at the airport?',
            'Passengers are advised to arrive at least 2 hours before departure.',
          ),
          faqTile(
            'Where can I find airport taxis?',
            'Verified airport taxis are available at the main arrival gate.',
          ),
          faqTile(
            'Can I report a lost item?',
            'Yes. Use the Lost & Found section to report or check recovered items.',
          ),
        ],
      ),
    );
  }
}
