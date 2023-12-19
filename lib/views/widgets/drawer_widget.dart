import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/attendences/attendence_details_screen.dart';
import '../screens/attendences/attendence_list.dart';
import '../screens/attendences/attendence_screen.dart';
import '../screens/clients/clients_screen.dart';
import '../screens/departmens/department_screen.dart';
import '../screens/designation/designation_screen.dart';
import '../screens/employees/employee_screen.dart';
import '../screens/events/events_screen.dart';
import '../screens/holidays/holiday_screen.dart';
import '../screens/leaves/leaves_list_screen.dart';
import '../screens/leaves/leaves_request_screen.dart';
import '../screens/projects/projects_screen.dart';
import '../screens/tasks/tasks_screen.dart';
import '../themes/app_colors.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            padding: const EdgeInsets.only(top: 35),
            color: AppColors.blueColor,
            child: ListView(padding: EdgeInsets.zero, children: [
              ListTile(
                title: const Text('Dashboard',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {},
              ),
              ExpansionTile(
                iconColor: Colors.white,
                title: const Text('Employees',
                    style: TextStyle(color: Colors.white)),
                children: [
                  ListTile(
                    title: const Text('All Employees',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const EmployeeScreen()));
                    },
                  ),
                  ListTile(
                    title: const Text('Holidays',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const HolidayScreen()));
                    },
                  ),
                  ListTile(
                      title: const Text('Attendence',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => const AttendenceScreen()));
                      }),
                  ListTile(
                    title: const Text('Attendence List',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const AttendanceList()));
                    },
                  ),
                  ListTile(
                    title: const Text('Attendence Details',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const AttendanceDetailScreen()));
                    },
                  ),
                  ListTile(
                    title: const Text('Leave Requests',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const LeaveRequestScreens()));
                    },
                  ),
                  ListTile(
                    title: const Text('Departments',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const DepartmentScreen()));
                    },
                  ),
                  ListTile(
                    title: const Text('Designations',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => const DesignationScreen()));
                    },
                  ),
                ],
              ),
              ListTile(
                title: const Text('Projects',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (_) => const ProjectScreen()));
                },
              ),
              ListTile(
                title:
                    const Text('Task', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => const TaskScreen()));
                },
              ),
              ListTile(
                title:
                    const Text('Events', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => const EventsScreen()));
                },
              ),
              ListTile(
                title: const Text('Leave List',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (_) => const LeaveListScreen()));
                },
              ),
              ListTile(
                title: const Text('Clients',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (_) => const ClientsScreen()));
                },
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
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (_) => const AttendenceScreen()));
                },
              ),
            ])));
  }
}
