import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';
import 'completed_project_item/completed_project_item.dart';
import 'completed_projects_header.dart';
import 'completed_projects_tabs.dart';

class CompletedProjects extends StatefulWidget {
  const CompletedProjects({
    Key? key,
  }) : super(key: key);

  @override
  _CompletedProjectsState createState() => _CompletedProjectsState();
}

class _CompletedProjectsState extends State<CompletedProjects> {
  int _visibleProjectsCount = 3; // Initially show 3 projects

  void _showMoreProjects() {
    setState(() {
      _visibleProjectsCount +=
          3; // Increment by 3 every time "Show More" button is pressed
    });
  }

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 576, max: 1440, data: Metrics.width(context));

    return BaseContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 44 + 36 * pad),
          CompletedProjectsHeader(pad: pad),
          //const SizedBox(height: 36),
          //CompletedProjectsTabs(pad: pad),
          ...List.generate(
            min(completedProjects.length, _visibleProjectsCount),
            (index) {
              final item = completedProjects[index];
              return CompletedProjectItem(
                item: item,
                isImageLeft: index % 2 == 0,
              );
            },
          ),
          if (_visibleProjectsCount < completedProjects.length)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80 * pad),
                Material(
                  color: greenBorder,
                  child: InkWell(
                    onTap: _showMoreProjects,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          'Show More'.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: white),
                          const SizedBox(width: 12),
                          const Icon(
                            FontAwesomeIcons.chevronRight,
                            color: white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
