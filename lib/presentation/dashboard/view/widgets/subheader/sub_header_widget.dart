import 'package:flutter/material.dart';

class SubheaderWidget extends StatelessWidget {
  const SubheaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Flexible(
            child: Row(
              children: [
                const Text(
                  'Sort by ',
                  style: TextStyle(color: Colors.white24),
                ),
                const SizedBox(width: 20.0),
                DropdownButton<String>(
                  underline: Container(),
                  style: const TextStyle(
                    color: Colors.white24,
                  ),
                  iconEnabledColor: Colors.white24,
                  items: [
                    DropdownMenuItem(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Duration",
                          style: TextStyle(color: Colors.white24),
                        ),
                      ),
                    ),
                  ],
                  onChanged: (selected) {},
                  autofocus: true,
                )
              ],
            ),
          ),
          const Row(
            children: [
              Icon(
                Icons.view_list,
                color: Colors.white24,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.view_module,
                color: Colors.white24,
              ),
            ],
          )
        ],
      ),
    );
  }
}
