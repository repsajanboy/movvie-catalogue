import 'package:flutter/material.dart';

class MainHeaderWidget extends StatelessWidget {
  const MainHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: const Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white10,
                    size: 30,
                  ),
                ),
                hintText: 'Search by Title Genre and Year',
                hintStyle: TextStyle(
                  color: Colors.white10,
                ),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              ),
              cursorColor: Colors.white10,
              cursorHeight: 25.0,
              style: TextStyle(
                color: Colors.white10,
                fontSize: 20.0,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'Jasper Janboy Monterey',
                style: TextStyle(
                  color: Colors.white10,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(width: 20.0),
              CircleAvatar(
                radius: 15,
                child: Icon(Icons.person),
                backgroundColor: Colors.white24,
              ),
              SizedBox(width: 20.0),
              Icon(
                Icons.settings,
                color: Colors.white10,
              )
            ],
          )
        ],
      ),
    );
  }
}
