import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    super.key,
    required this.title,
    required this.text,
    this.icon = Icons.chevron_right_outlined,
  });
  final String title;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(title, style: TextStyle(color: Colors.grey)),
        ),
        Expanded(flex: 3, child: Text(text)),

        Icon(icon, size: icon == Icons.chevron_right_outlined ? 28 : 22),
      ],
    );
  }
}
