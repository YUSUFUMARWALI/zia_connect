import 'package:flutter/material.dart';

class FlightDetailsScreen extends StatelessWidget {
  const FlightDetailsScreen({
    super.key,
    required this.flight,
    required this.route,
    required this.time,
    required this.status,
  });

  final String flight;
  final String route;
  final String time;
  final String status;

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

  Widget infoTile(String title, String value, IconData icon) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Details'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            flight,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Chip(
            label: Text(status),
            backgroundColor: statusColor(status).withValues(alpha: 0.15),
          ),
          const SizedBox(height: 20),
          infoTile('Route', route, Icons.route),
          infoTile('Time', time, Icons.access_time),
          infoTile('Terminal', 'Terminal 1', Icons.business),
          infoTile('Gate', 'Gate A3', Icons.door_front_door),
          infoTile('Passenger Note', 'Please arrive early for security screening.', Icons.info),
        ],
      ),
    );
  }
}
