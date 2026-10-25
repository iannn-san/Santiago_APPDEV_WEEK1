import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorldClockWidget extends StatelessWidget {
  const WorldClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime nowUtc = DateTime.now().toUtc();

    DateTime manilaTime = nowUtc.add(const Duration(hours: 8));
    DateTime tokyoTime = nowUtc.add(const Duration(hours: 9));
    DateTime newYorkTime = nowUtc.add(const Duration(hours: -5));
    String formattedTime(DateTime time) => DateFormat('hh:mm a').format(time);
    String formattedDate(DateTime time) => DateFormat('dd MMM yyyy').format(time);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "World Clock",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            _buildCityTime("Manila", formattedTime(manilaTime), formattedDate(manilaTime)),
            const SizedBox(height: 10),
            _buildCityTime("Tokyo", formattedTime(tokyoTime), formattedDate(tokyoTime)),
            const SizedBox(height: 10),
            _buildCityTime("New York", formattedTime(newYorkTime), formattedDate(newYorkTime)),
          ],
        ),
      ),
    );
  }

  Widget _buildCityTime(String city, String time, String date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(city, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(time, style: const TextStyle(fontSize: 16, color: Colors.red)),
            Text(date, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}