import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: Colors.indigo,
            child: ListView(padding: EdgeInsets.zero, children: [
              ListTile(
                title: const Text('Dashboard',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {},
              ),
              ExpansionTile(
                title: const Text('Employees',
                    style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.arrow_right, color: Colors.white),
                children: [
                  ListTile(
                    title: const Text('All Employees',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Holidays',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Attendence',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Attendence List',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Attendence Details',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Leave Requests',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Departments',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Designations',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                ],
              ),
              ListTile(
                title: const Text('Projects',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title:
                    const Text('Task', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title:
                    const Text('Events', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Leave List',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Clients',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title:
                    const Text('Email', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                title:
                    const Text('Chat', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ExpansionTile(
                title:
                    const Text('Calls', style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.arrow_right, color: Colors.white),
                children: [
                  ListTile(
                    title: const Text('Voice call',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Video Call',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Incoming  call Page',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                  title: const Text('Accounts',
                      style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.arrow_right, color: Colors.white),
                  children: [
                    ListTile(
                      title: const Text('Estimation',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Invoices',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ]),
              ExpansionTile(
                  title: const Text('PayRoll',
                      style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.arrow_right, color: Colors.white),
                  children: [
                    ListTile(
                      title: const Text('Employee Salary',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ]),
              ListTile(
                title: const Text('Attendence',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
            ])));
  }
}
