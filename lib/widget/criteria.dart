import 'package:flutter/material.dart';

class Criteria extends StatelessWidget {
  final String criteriaText;

  Criteria({required this.criteriaText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Image.asset(
              'assets/dot.png',
              width: 16,
              height: 16,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              criteriaText,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
