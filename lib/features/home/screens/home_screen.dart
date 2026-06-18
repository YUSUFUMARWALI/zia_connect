import 'package:flutter/material.dart';
import '../../flights/screens/flights_screen.dart';
import '../../taxi/screens/taxi_screen.dart';
import '../../hotels/screens/hotels_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildCard({
    required IconData icon,
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return Card(
      elevation: 3,
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(child: Icon(icon)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZIA Connect'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green.shade700,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome to', style: TextStyle(color: Colors.white70)),
                SizedBox(height: 6),
                Text(
                  'Zamfara International Airport',
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          buildCard(
            icon: Icons.flight_takeoff,
            title: 'Flights',
            subtitle: 'Arrivals, departures and status',
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const FlightsScreen())),
          ),
          buildCard(
            icon: Icons.local_taxi,
            title: 'Airport Taxi',
            subtitle: 'Book a verified taxi',
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TaxiScreen())),
          ),
          buildCard(
            icon: Icons.hotel,
            title: 'Hotels',
            subtitle: 'Nearby hotels and reservations',
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const HotelsScreen())),
          ),
          buildCard(
            icon: Icons.mosque,
            title: 'Prayer Times',
            subtitle: 'Prayer schedule and Qiblah',
          ),
          buildCard(
            icon: Icons.campaign,
            title: 'Announcements',
            subtitle: 'Airport updates and alerts',
          ),
        ],
      ),
    );
  }
}
