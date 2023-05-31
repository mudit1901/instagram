import 'package:flutter/material.dart';
import 'package:instagram/utils/gridforsearch.dart';

class Usersearch extends StatelessWidget {
  const Usersearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey.shade300,
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                Container(
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: GridViewer(),
    );
  }
}
