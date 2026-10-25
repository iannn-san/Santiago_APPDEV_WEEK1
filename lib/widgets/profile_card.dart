import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text("Reyian A. Santiago"),
        subtitle: Text("BS Information Technology Major in Web and Mobile Applications\nRedmi Note 12 Pro 5g\nLPU Cavite"),
      ),
    );
  }
}