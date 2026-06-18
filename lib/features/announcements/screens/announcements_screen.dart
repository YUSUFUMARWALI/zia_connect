import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  final List<Map<String, String>> announcements = const [
    {
      'title': 'Airport Opens Early',
      'message': 'Passengers are advised to arrive at least 2 hours before departure.',
      'date': 'Today',
    },
    {
      'title': 'Security Screening Notice',
      'message': 'Please keep valid ID cards and travel documents ready for inspection.',
      'date': 'Today',
    },
    {
      'title': 'Taxi Pickup Area',
      'message': 'Verified airport taxis are available at the main arrival gate.',
      'date': 'Yesterday',
    },
  ];

  Widget announcementCard(Map<String, String> announcement) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: const Icon(Icons.campaign),
        title: Text(
          announcement['title']!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(announcement['message']!),
        trailing: Text(announcement['date']!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Announcements'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: announcements.map(announcementCard).toList(),
      ),
    );
  }
}
