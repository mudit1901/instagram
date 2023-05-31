import 'dart:math';

import 'package:flutter/material.dart';

class Userreels extends StatelessWidget {
  const Userreels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Row(
            children: [
              Text(
                'Reels',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 250,
              ),
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(Random().nextInt(0xffffff)).withAlpha(0xff),
                      border: Border.all(width: 1, style: BorderStyle.solid)),
                  height: 610,
                  width: double.infinity,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 480.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Username',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 135.0, top: 20),
                      child: Text(
                        'Here will be the Reel Description',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 230.0, top: 20),
                      child: Text(
                        'Music and All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 320, top: 430),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(
                        height: 20,
                      ),
                      Icon(Icons.chat),
                      SizedBox(
                        height: 20,
                      ),
                      Icon(Icons.send),
                      SizedBox(
                        height: 20,
                      ),
                      Icon(Icons.do_disturb)
                    ],
                  ),
                )
              ],
            );
          },
          itemCount: 20,
        ));
  }
}
