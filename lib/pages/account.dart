import 'package:flutter/material.dart';
import 'package:instagram/utils/stories.dart';
import 'package:instagram/utils/tab1.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Row(
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Username',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 141,
                ),
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 18,
                ),
                Icon(
                  Icons.line_weight_rounded,
                  color: Colors.black,
                )
              ],
            ),
            elevation: 0.0,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    ),
                    const Column(
                      children: [
                        Text(
                          '237',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Post',
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          '3930',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          '40',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Following',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200.0),
                child: Column(
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Bio',
                    ),
                    Text(
                      'Any Link',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 0,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                          child: Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Center(
                          child: Text(
                        'Share Profile',
                        style: TextStyle(fontSize: 16),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  children: [
                    const Stories(),
                    const Stories(),
                    const Stories(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9.0, left: 10),
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                shape: BoxShape.circle),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 5, bottom: 8.0, top: 2.0),
                          child: Text('Add Story'),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const TabBar(tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_on_outlined,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ]),
              const Expanded(
                  child: TabBarView(
                children: [
                  Tab1(),
                  Tab1(),
                  Tab1(),
                ],
              ))
            ],
          ),
        ));
  }
}
