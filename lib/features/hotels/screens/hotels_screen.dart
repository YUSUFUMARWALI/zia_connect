import 'package:flutter/material.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  final List<Map<String, String>> hotels = const [
    {
      'name': 'Zamfara Grand Hotel',
      'rating': '5.0',
      'distance': '2.5 km from airport',
      'price': '25,000/night',
    },
    {
      'name': 'Gusau City Lodge',
      'rating': '4.3',
      'distance': '5 km from airport',
      'price': '18,000/night',
    },
    {
      'name': 'Airport View Suites',
      'rating': '4.7',
      'distance': '1.8 km from airport',
      'price': '30,000/night',
    },
  ];

  Widget hotelCard(Map<String, String> hotel) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(hotel['name']!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text('Rating: ${hotel['rating']} '),
            Text('Distance: ${hotel['distance']}'),
            Text('Price: ${hotel['price']}'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.hotel),
              label: const Text('Book Now'),
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
        title: const Text('Hotels'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: hotels.map(hotelCard).toList(),
      ),
    );
  }
}
