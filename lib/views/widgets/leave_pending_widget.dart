import 'package:flutter/material.dart';

class LeavePWidget extends StatelessWidget {
  const LeavePWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Plan Leave'),
            ),
            const SizedBox(width: 60),
            const Text('View Details'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calendar_month),
            SizedBox(width: 5),
            Text('28-12-2023'),
            SizedBox(width: 60),
            Icon(Icons.calendar_month),
            SizedBox(width: 5),
            Text('28-12-2023'),
          ],
        ),
      ],
    );
  }
}
