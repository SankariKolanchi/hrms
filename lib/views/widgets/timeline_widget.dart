import 'package:flutter/material.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('2003-2007'),
          Text('International Collage of Arts & Science(UG) '),
          Text('Bsc Computer Science')
        ],
      ),
    );
  }
}
