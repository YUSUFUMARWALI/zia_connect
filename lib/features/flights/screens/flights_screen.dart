import 'package:flutter/material.dart';

class FlightsScreen extends StatelessWidget {
  const FlightsScreen({super.key});

  final List<Map<String, String>> flights = const [
    {
      'flight': 'Air Peace P4712',
      'route': 'Abuja  Gusau',
      'time': '08:45 AM',
      'status': 'Boarding',
    },
    {
      'flight': 'Max Air VM204',
      'route': 'Lagos  Gusau',
      'time': '11:30 AM',
      'status': 'On Time',
    },
    {
      'flight': 'Azman ZQ118',
      'route': 'Kano  Gusau',
      'time': '02:10 PM',
      'status': 'Delayed',
    },
  ];

  Color statusColor(String status) {
    switch (status) {
      case 'Boarding':
        return Colors.orange;
      case 'On Time':
        return Colors.green;
      case 'Delayed':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Information'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: flights.length,
        itemBuilder: (context, index) {
          final flight = flights[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.flight_takeoff),
              title: Text(flight['flight']!),
              subtitle: Text('${flight['route']}  ${flight['time']}'),
              trailing: Chip(
                label: Text(flight['status']!),
                backgroundColor:
                    statusColor(flight['status']!).withValues(alpha: 0.15),
              ),
            ),
          );
        },
      ),
    );
  }
}
