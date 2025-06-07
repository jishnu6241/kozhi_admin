import 'package:flutter/material.dart';

class CustomHomeSingleButton extends StatelessWidget {
  final IconData icon;
  const CustomHomeSingleButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Colors.white, // White border
          width: 1, // Border thickness
        ),
      ),

      child: Padding(
        padding: EdgeInsets.all(12),
        child: Icon(icon, color: Colors.white, size: 25),
      ),
    );
  }
}
