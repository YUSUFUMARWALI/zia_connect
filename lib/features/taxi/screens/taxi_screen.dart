import 'package:flutter/material.dart';

class TaxiScreen extends StatelessWidget {
  const TaxiScreen({super.key});

  final List<Map<String, String>> taxis = const [
    {
      'driver': 'Musa Ibrahim',
      'vehicle': 'Toyota Corolla',
      'pickup': 'Zamfara International Airport',
      'destination': 'Gusau City Center',
      'fare': '3,500',
    },
    {
      'driver': 'Aminu Bello',
      'vehicle': 'Honda Accord',
      'pickup': 'Zamfara International Airport',
      'destination': 'Talata Mafara',
      'fare': '12,000',
    },
    {
      'driver': 'Sani Abubakar',
      'vehicle': 'Toyota Sienna',
      'pickup': 'Zamfara International Airport',
      'destination': 'Kaura Namoda',
      'fare': '18,000',
    },
  ];

  Widget taxiCard(Map<String, String> taxi) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(taxi['driver']!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text('Vehicle: ${taxi['vehicle']}'),
            Text('Pickup: ${taxi['pickup']}'),
            Text('Destination: ${taxi['destination']}'),
            const SizedBox(height: 8),
            Text('Estimated Fare: ${taxi['fare']}', style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.local_taxi),
              label: const Text('Book Taxi'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Airport Taxi'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: taxis.map(taxiCard).toList(),
      ),
    );
  }
}
