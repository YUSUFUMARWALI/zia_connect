import 'package:flutter/material.dart';
import '../../../shared/widgets/dashboard_card.dart';
import '../../../core/constants/app_colors.dart';
import '../../flights/screens/flights_screen.dart';
import '../../prayer/screens/prayer_screen.dart';
import '../../announcements/screens/announcements_screen.dart';
import '../../airport_guide/screens/airport_guide_screen.dart';
import '../../support/screens/support_screen.dart';
import '../../auth/screens/login_required_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void openScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  void requireLogin(BuildContext context, String featureName) {
    openScreen(
      context,
      LoginRequiredScreen(featureName: featureName),
    );
  }

  Widget quickAction({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: AppColors.primaryGreen, size: 26),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
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
        title: const Text('ZIA Connect'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: AppColors.primaryGreen,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.flight_takeoff, color: Colors.white, size: 38),
                SizedBox(height: 12),
                Text(
                  'Welcome to\nZamfara International Airport',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Browse public services or login for bookings and reports.',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Quick Actions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 1.6,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              quickAction(
                context: context,
                icon: Icons.flight_takeoff,
                title: 'Flights',
                onTap: () => openScreen(context, const FlightsScreen()),
              ),
              quickAction(
                context: context,
                icon: Icons.local_taxi,
                title: 'Taxi',
                onTap: () => requireLogin(context, 'Airport Taxi'),
              ),
              quickAction(
                context: context,
                icon: Icons.hotel,
                title: 'Hotels',
                onTap: () => requireLogin(context, 'Hotels'),
              ),
              quickAction(
                context: context,
                icon: Icons.mosque,
                title: 'Prayer',
                onTap: () => openScreen(context, const PrayerScreen()),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Airport Services',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
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
            onTap: () => requireLogin(context, 'Lost & Found'),
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
