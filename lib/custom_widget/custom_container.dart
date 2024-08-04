import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String text;
  const CustomContainer(
      {super.key, required this.color, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(50)),
            margin: const EdgeInsets.only(right: 25.0),
            width: 70,
            height: 70,
            child: icon,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            textAlign: TextAlign.start,
            '$text',
            style: TextStyle(
              fontSize: 19,
            ),
          )
        ],
      ),
    );
  }
}
