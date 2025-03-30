import 'package:flutter/material.dart';

class FilterOptionWidget extends StatelessWidget {
  const FilterOptionWidget({
    super.key,
    required this.backgroundColor,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final Color backgroundColor;
  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        height: 80,
        clipBehavior: Clip.hardEdge,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Center(
            child: ListTile(
              title: Text(title),
              subtitle: Text(
                subtitle,
                style: const TextStyle(color: Colors.grey),
              ),
              trailing: icon,
            ),
          ),
        ),
      ),
    );
  }
}
