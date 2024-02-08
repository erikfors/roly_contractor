import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/app/layouts/footer/footer_bottom.dart';
import 'package:ventura/app/layouts/footer/footer_contact.dart';
import 'package:ventura/app/layouts/footer/footer_info.dart';
import 'package:ventura/app/layouts/footer/footer_subscribde.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

class CompletedProjectDetailView extends StatelessWidget {
  const CompletedProjectDetailView({Key? key, required this.project})
      : super(key: key);
  final CompletedProjectItemModel project;

  @override
  Widget build(BuildContext context) {
    final pad1 = normalize(min: 576, max: 976, data: Metrics.width(context));

    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            project.title.poppins(
              fontSize: 24 + 6 * pad1,
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.mapPin,
                  color: orange,
                  size: 18,
                ),
                const SizedBox(width: 10),
                project.location.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 800 * pad1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Budget'.poppins(
                            fontSize: 14 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                          project.budget.poppins(
                            fontSize: 16 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: greenBg,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 130 * pad1,
                        height: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Timespan'.poppins(
                            fontSize: 14 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                          project.timespan.poppins(
                            fontSize: 16 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: greenBg,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 800 * pad1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Status'.poppins(
                            fontSize: 14 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                          project.status.poppins(
                            fontSize: 16 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: greenBg,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 130 * pad1,
                        height: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Size'.poppins(
                            fontSize: 14 + 4 * pad1,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              project.size.poppins(
                                fontSize: 16 + 4 * pad1,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: greenBg,
                              ),
                              '2'.poppins(
                                fontSize: 16 + 4 * pad1,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: greenBg,
                                fontFeatures: [
                                  const FontFeature.superscripts()
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              'Pictures of the project:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              direction: Axis.vertical,
              children: project.imgPaths.map((imgPath) {
                return Image.network(
                  imgPath,
                  width: 800,
                  height: 800,
                  fit: BoxFit.cover,
                );
              }).toList(),
            ),
            SizedBox(
              height: 256 * pad1,
            ),
            Container(
              width: Metrics.width(context),
              height:
                  (Metrics.isDesktop(context) || Metrics.isTablet(context))
                      ? 644
                      : Metrics.isCompact(context)
                          ? (644 + 130)
                          : (644 + 130 + 321),
              color: greenBg,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const FooterContact(),
                  SizedBox(
                    width: Metrics.width(context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: Metrics.width(context),
                          child: Column(
                            children: [
                              const SizedBox(height: 240),
                              BaseContainer(
                                child: (Metrics.isDesktop(context) ||
                                        Metrics.isTablet(context))
                                    ? const Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          FooterInfo(),
                                          FooterSubscribe(),
                                        ],
                                      )
                                    : Metrics.isCompact(context)
                                        ? const Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  FooterInfo(),
                                                ],
                                              ),
                                              SizedBox(height: 36),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  FooterSubscribe(),
                                                ],
                                              ),
                                            ],
                                          )
                                        : const Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  FooterInfo(),
                                                ],
                                              ),
                                              SizedBox(height: 24),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  FooterSubscribe(),
                                                ],
                                              ),
                                            ],
                                          ),
                              ),
                              const SizedBox(height: 40),
                            ],
                          ),
                        ),
                        const FooterBottom(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
