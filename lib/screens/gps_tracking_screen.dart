import 'package:flutter/material.dart';

class GPSTrackingScreen extends StatelessWidget {
  const GPSTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                'assets/images/logo.png',
                height: 40,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'SECURE BAJAJ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('GPS Tracking started!')),
            );
          },
          child: Text('Start GPS Tracking'),
        ),
      ),
    );
  }
}
