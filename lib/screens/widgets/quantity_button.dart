import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  final IconData icon;
  const QuantityButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            blurStyle: BlurStyle.normal,
            blurRadius: 15,
            spreadRadius: 5,
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Icon(
        icon,
        color: Colors.grey,
        size: 26,
      ),
    );
  }
}
