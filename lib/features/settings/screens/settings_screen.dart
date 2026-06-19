import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Widget settingsTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          settingsTile(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'English, Hausa and more coming soon',
          ),
          settingsTile(
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Manage flight and airport alerts',
          ),
          settingsTile(
            icon: Icons.dark_mode,
            title: 'Appearance',
            subtitle: 'Dark mode coming soon',
          ),
          settingsTile(
            icon: Icons.info,
            title: 'About ZIA Connect',
            subtitle: 'Digital airport companion for Zamfara International Airport',
          ),
        ],
      ),
    );
  }
}
