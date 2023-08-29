import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class GridViewer extends StatelessWidget {
  const GridViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      direction: ShimmerDirection.ltr,
      gradient: LinearGradient(colors: [
        Colors.purple.shade500,
        Colors.purple.shade50,
        Colors.purple.shade500
      ]),
      child: GridView.builder(
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
      ),
    );
  }
}
