import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.indigo,
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 19,
          ),
        ),
        title: const Text(
          'Employee Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              color: Colors.indigo,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      height: 120,
                      child: Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 120,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.person,
                              size: 100,
                              color: Colors.grey,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 25,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              padding: const EdgeInsets.all(8),
                              child: const Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('John Doe',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 10),
                    const Text('Android Developer',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.indigo,
              height: 60,
              child: Stack(children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 30,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                  ),
                ),
                Positioned(
                  left: 30,
                  right: 30,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 0.5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const TabBar(
                      indicator: BoxDecoration(),
                      tabs: [
                        Tab(
                          icon: Icon(Icons.person),
                        ),
                        Tab(
                          icon: Icon(Icons.book_sharp),
                        ),
                        Tab(
                          icon: Icon(Icons.work),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: TabBarView(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Text('Personal Info'),
                      ),
                      Expanded(
                        child: ListView.separated(
                            itemCount: 10,
                            separatorBuilder: (_, i) {
                              return const Divider();
                            },
                            itemBuilder: (_, i) {
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('EmployeeId'),
                                    Text('102'),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
                        child: Text('Education Info'),
                      ),
                      Expanded(
                        child: ListView.separated(
                            itemCount: 10,
                            separatorBuilder: (_, i) {
                              return const Divider();
                            },
                            itemBuilder: (_, i) {
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('2003-2007'),
                                    Text(
                                        'International College of Arts & Science (UG)'),
                                    Text('Bsc Computer Science'),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15.0, horizontal: 3),
                        child: Text('Education Info'),
                      ),
                      Expanded(
                        child: ListView.separated(
                            itemCount: 10,
                            separatorBuilder: (_, i) {
                              return const Divider();
                            },
                            itemBuilder: (_, i) {
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('2003-2007'),
                                    Text(
                                        'International College of Arts & Science (UG)'),
                                    Text('Bsc Computer Science'),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
