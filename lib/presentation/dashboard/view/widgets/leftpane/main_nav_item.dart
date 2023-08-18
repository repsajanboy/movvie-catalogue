import 'package:flutter/material.dart';

class MainNavItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback action;
  final IconData? icon;
  const MainNavItem(
    this.title,
    this.icon,
    this.isSelected,
    this.action,
    {Key? key}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        color: isSelected ? Colors.deepPurple.withOpacity(0.15) : null,
        onPressed: action,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              icon,
              color: Colors.white24,
              size: 20,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white24,
                fontSize: 20.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
