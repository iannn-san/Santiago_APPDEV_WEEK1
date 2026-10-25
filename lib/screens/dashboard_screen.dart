import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/kpi_card.dart';
import '../widgets/dashboard_tile.dart';
import '../widgets/world_clock.dart';
import '../widgets/notification_badge.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int crossAxisCount = width > 600 ? 4 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LPU Smart Campus Dashboard by Ian S."),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: const [
          NotificationBadge(),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Card(
            color: Colors.redAccent,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Welcome to Lyceum of the Philippines University - Cavite",
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const ProfileCard(),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: crossAxisCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              KpiCard(icon: Icons.wifi, label: "Network", status: "Offline"),
              KpiCard(icon: Icons.location_on, label: "GPS", status: "Off"),
              KpiCard(icon: Icons.cloud, label: "API", status: "Not Connected"),
              KpiCard(icon: Icons.storage, label: "Storage", status: "0%"),
            ],
          ),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: crossAxisCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              DashboardTile(title: "Academics", icon: Icons.school),
              DashboardTile(title: "Student Services", icon: Icons.support_agent),
              DashboardTile(title: "Announcements", icon: Icons.campaign),
              DashboardTile(title: "Facilities", icon: Icons.apartment),
            ],
          ),
          const SizedBox(height: 20),
          const WorldClockWidget(),
          const SizedBox(height: 20),
          const Text(
            "Recent Activity",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("No Activity Available"),
            ),
          ),
        ],
      ),
    );
  }
}