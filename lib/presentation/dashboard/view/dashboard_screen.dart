import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 300,
          color: Colors.grey[900],
        ),
        Expanded(
          child: Container(
            color: Colors.grey[800],
            child: Column(
              children: [
                
              ],
            ),
          ),
        )
      ],
    );
  }
}