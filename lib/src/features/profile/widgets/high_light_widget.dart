import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HighLightWidget extends StatelessWidget {
  final String? title;
  final String? value;
  final String? subfix;
  final Color color;
  const HighLightWidget({
    this.title,
    this.value,
    this.subfix,
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
          colors: [color.withValues(alpha: 0.3), Colors.transparent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                value ?? '0',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(10),
              if (subfix != null)
                Text(
                  subfix!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
            ],
          ),
          Text(title ?? '', style: GoogleFonts.poppins(fontSize: 15)),
        ],
      ),
    );
  }
}
