import 'package:flutter/material.dart';
import '../../../shared/widgets/dashboard_card.dart';
import '../../flights/screens/flights_screen.dart';
import '../../taxi/screens/taxi_screen.dart';
import '../../hotels/screens/hotels_screen.dart';
import '../../prayer/screens/prayer_screen.dart';
import '../../announcements/screens/announcements_screen.dart';
import '../../airport_guide/screens/airport_guide_screen.dart';
import '../../lost_found/screens/lost_found_screen.dart';
import '../../support/screens/support_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void openScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ZIA Connect')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green.shade700,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              'Welcome to\nZamfara International Airport',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          DashboardCard(
            icon: Icons.flight_takeoff,
            title: 'Flights',
            subtitle: 'Arrivals, departures and status',
            onTap: () => openScreen(context, const FlightsScreen()),
          ),
          DashboardCard(
            icon: Icons.local_taxi,
            title: 'Airport Taxi',
            subtitle: 'Book a verified taxi',
            onTap: () => openScreen(context, const TaxiScreen()),
          ),
          DashboardCard(
            icon: Icons.hotel,
            title: 'Hotels',
            subtitle: 'Nearby hotels and reservations',
            onTap: () => openScreen(context, const HotelsScreen()),
          ),
          DashboardCard(
            icon: Icons.mosque,
            title: 'Prayer Times',
            subtitle: 'Prayer schedule and Qiblah',
            onTap: () => openScreen(context, const PrayerScreen()),
          ),
          DashboardCard(
            icon: Icons.campaign,
            title: 'Announcements',
            subtitle: 'Airport updates and alerts',
            onTap: () => openScreen(context, const AnnouncementsScreen()),
          ),
          DashboardCard(
            icon: Icons.map,
            title: 'Airport Guide',
            subtitle: 'Facilities, terminal info and services',
            onTap: () => openScreen(context, const AirportGuideScreen()),
          ),
          DashboardCard(
            icon: Icons.luggage,
            title: 'Lost & Found',
            subtitle: 'Report or recover lost items',
            onTap: () => openScreen(context, const LostFoundScreen()),
          ),
          DashboardCard(
            icon: Icons.support_agent,
            title: 'Help & Support',
            subtitle: 'Contacts, emergency help and FAQs',
            onTap: () => openScreen(context, const SupportScreen()),
          ),
        ],
      ),
    );
  }
}
