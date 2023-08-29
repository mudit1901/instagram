import 'package:flutter/material.dart';
import 'package:instagram/utils/post.dart';
import 'package:instagram/utils/stories.dart';
import 'package:shimmer/shimmer.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Row(
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              width: 149,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.messenger_outline_sharp,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Shimmer(
          direction: ShimmerDirection.ltr,
          gradient: LinearGradient(colors: [
            Colors.grey.shade500,
            Colors.grey.shade300,
            Colors.grey.shade500
          ]),
          child: const Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                    Stories(),
                  ],
                ),
              ),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
            ],
          ),
        ),
      ),
    );
  }
}
