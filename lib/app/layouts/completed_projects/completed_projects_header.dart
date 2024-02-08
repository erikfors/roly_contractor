import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/core/core.dart';

class CompletedProjectsHeader extends StatelessWidget {
  const CompletedProjectsHeader({
    Key? key,
    required this.pad,
  }) : super(key: key);

  final double pad;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: Metrics.isMobile(context) ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            'portfolio'.toUpperCase().poppins(
                  color: const Color(0xff896e57),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  letterSpacing: 1,
                ),
          ],
        ),
        const SizedBox(height: 16),
        if (!Metrics.isMobile(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              'Projects we\'ve done'.stixTwoText(
                fontSize: 32 + 16 * pad,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        if (Metrics.isMobile(context))
          Column(
            children: [
              'Projects we\'ve done'.stixTwoText(
                fontSize: 32 + 16 * pad,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
      ],
    );
  }
}
