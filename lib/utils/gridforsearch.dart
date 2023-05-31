import 'package:flutter/material.dart';

class GridViewer extends StatelessWidget {
  const GridViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 24,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(1.5),
          child: Container(
            color: Colors.deepPurple.shade100,
          ),
        );
      },
    );
  }
}
