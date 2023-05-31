import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 10,
              ),
              Text('Name Here')
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.favorite_outline,
                size: 25,
              ),
              Icon(
                Icons.messenger_outline_outlined,
                size: 25,
              ),
              Icon(
                Icons.send,
                size: 25,
              ),
              SizedBox(
                width: 100,
              ),
              Icon(Icons.bookmark_border_outlined)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Liked by Username and 4576993 others',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        const Text('Username  Here will be the Caption of the Post...')
      ],
    );
  }
}
