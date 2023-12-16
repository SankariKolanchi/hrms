import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';
import '../leave_pending_widget.dart';

class LeaveTab extends StatelessWidget {
  const LeaveTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Pending"),
        Expanded(
          child: Timeline.tileBuilder(
            shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            theme: TimelineThemeData(
              indicatorTheme: const IndicatorThemeData(
                color: AppColors.darkRedColor,
                size: 18.0,
              ),
              connectorTheme: const ConnectorThemeData(color: Colors.grey),
            ),
            builder: TimelineTileBuilder.fromStyle(
                contentsAlign: ContentsAlign.basic,
                itemCount: 30,
                nodePositionBuilder: (context, index) => 0.00,
                indicatorPositionBuilder: (context, index) => 0.2,
                contentsBuilder: (context, index) {
                  return LeavePWidget();
                }),
          ),
        ),
      ],
    );
  }
}
