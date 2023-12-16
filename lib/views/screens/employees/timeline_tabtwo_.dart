import 'package:flutter/material.dart';
import 'package:hrms/views/widgets/timeline_widget.dart';
import 'package:timelines/timelines.dart';

import '../../themes/app_colors.dart';

class TimeLIneTab extends StatelessWidget {
  const TimeLIneTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Timeline.tileBuilder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        theme: TimelineThemeData(
          indicatorTheme: const IndicatorThemeData(
            color: AppColors.darkRedColor,
            size: 18.0,
          ),
          connectorTheme: const ConnectorThemeData(color: Colors.grey),
        ),
        builder: TimelineTileBuilder.fromStyle(
            contentsAlign: ContentsAlign.basic,
            itemCount: 5,
            nodePositionBuilder: (context, index) => 0.00,
            indicatorPositionBuilder: (context, index) => 0.2,
            contentsBuilder: (context, index) {
              return TimelineWidget();
            }),
      ),
    );
  }
}
