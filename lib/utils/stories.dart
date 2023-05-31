import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration:
                BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Username'),
        ],
      ),
    );
  }
}
