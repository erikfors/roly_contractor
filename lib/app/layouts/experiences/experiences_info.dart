import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

import 'experiences_info_item.dart';

class ExperiencesInfo extends StatelessWidget {
  const ExperiencesInfo({
    Key? key,
    required this.pad,
    required this.isBigScreen,
  }) : super(key: key);

  final double pad;
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: isBigScreen ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          'Roly Renovations'.msMadi(
            color: orange,
            fontSize: 52,
          ),
          'We craft living environments tailored to enhance your significant life moments.'.stixTwoText(
            textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
            color: white,
            fontSize: 40,
            height: 1.5,
          ),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExperiencesInfoItem(pad: pad, count: '20+', title: 'Years of experiences'),
              ExperiencesInfoItem(pad: pad, count: '100+', title: 'Completed Projects'),
              ExperiencesInfoItem(pad: pad, count: '5.0', title: 'Overall Ratings'),
            ],
          ),
        ],
      ),
    );
  }
}
