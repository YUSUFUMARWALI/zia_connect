import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notificationsEnabled = true;
  bool darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: SwitchListTile(
              value: notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  notificationsEnabled = value;
                });
              },
              title: const Text('Notifications'),
              subtitle: const Text('Flight and airport alerts'),
            ),
          ),
          Card(
            child: SwitchListTile(
              value: darkModeEnabled,
              onChanged: (value) {
                setState(() {
                  darkModeEnabled = value;
                });
              },
              title: const Text('Dark Mode'),
              subtitle: const Text('Coming soon'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              subtitle: Text('English, Hausa and more coming soon'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text('About ZIA Connect'),
              subtitle: Text(
                'Digital airport companion for Zamfara International Airport',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
