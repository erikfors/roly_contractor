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
            Container(
              width: Metrics.width(context),
              color: greenBorder,
              child: SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Logo.png'.icon,
                      width: 110,
                      height: 60,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                    ),
                    const SizedBox(width: 16),
                    'Roly Renovations'.poppins(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      height: 1.5,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: Metrics.width(context),
              height: 1,
              color: greenlight,
            ),
            Container(
              width: Metrics.width(context),
              color: greenBorder,
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 16),
                    '+1 (914) 661-8390'.poppins(
                      color: white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14 + 4 * pad1,
                      height: 1.5,
                    ),
                    const SizedBox(width: 16),
                    'roly@gmail.com'.poppins(
                      color: white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14 + 4 * pad1,
                      height: 1.5,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            if (!Metrics.isMobile(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   project.title.stixTwoText(
                    fontSize: 32 + 16 * pad1,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            if (Metrics.isMobile(context))
              Column(
                children: [
                   project.title.stixTwoText(
                    fontSize: 32 + 16 * pad1,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            const SizedBox(height: 8),
            Container(
              width: 150,
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    offset: const Offset(0, 3),
                    blurRadius: 6,
                  )
                ],
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
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
            const SizedBox(height: 32),
            //make a line
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.withOpacity(0.5),
            ),
            const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  'Pictures of the project:'.poppins(
              fontSize: 24 + 6 * pad1,
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
                ],
              ),
            const SizedBox(height: 16),
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
              height: (Metrics.isDesktop(context) || Metrics.isTablet(context))
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
