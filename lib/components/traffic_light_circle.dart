import 'package:flutter/material.dart';

class TrafficLightCircle extends StatelessWidget {
  final Color color;      // สีของไฟ
  final bool isOn;        // เปิดไฟหรือไม่

  const TrafficLightCircle({
    super.key,
    required this.color,
    required this.isOn,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 600),
      opacity: isOn ? 1.0 : 0.3,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: isOn
              ? [
                  BoxShadow(
                    color: color.withOpacity(0.6),
                    blurRadius: 25,
                    spreadRadius: 5,
                  ),
                ]
              : [],
        ),
      ),
    );
  }
}
