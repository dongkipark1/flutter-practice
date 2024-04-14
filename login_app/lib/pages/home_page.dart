import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              "assets/IDLE.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              "assets/IDLE2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              "assets/IDLE3.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              "assets/IDLE4.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
