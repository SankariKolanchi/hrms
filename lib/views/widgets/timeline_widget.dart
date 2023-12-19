import 'package:flutter/material.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Timeline'),
        ),
        body: const Center(
          child: TimelineItem(
            title: 'Your Event Title',
            description: 'Description of your event.',
          ),
        ),
      ),
    );
  }
}

class TimelineItem extends StatefulWidget {
  final String title;
  final String description;

  const TimelineItem({required this.title, required this.description});

  @override
  _TimelineItemState createState() => _TimelineItemState();
}

class _TimelineItemState extends State<TimelineItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              _buildDot(Colors.blue),
              _buildDot(Colors.black),
              _buildDot(Colors.red),
              _buildDot(Colors.green),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(widget.description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: CircleAvatar(
        radius: 5,
        backgroundColor: color,
      ),
    );
  }
}

void main() {
  runApp(const TimelineScreen());
}
