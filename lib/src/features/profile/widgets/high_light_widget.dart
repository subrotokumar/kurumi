import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighLightWidget extends StatelessWidget {
  final String? title;
  final String? value;
  final Color color;
  const HighLightWidget({
    this.title,
    this.value,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.3),
            Colors.transparent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value ?? '0',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            title ?? '',
            style: GoogleFonts.poppins(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
