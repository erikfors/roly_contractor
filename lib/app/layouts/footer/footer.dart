import 'package:flutter/material.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'footer_bottom.dart';
import 'footer_company.dart';
import 'footer_contact.dart';
import 'footer_info.dart';
import 'footer_sitemap.dart';
import 'footer_subscribde.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));

    return Container(
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
                        child: (Metrics.isDesktop(context) || Metrics.isTablet(context))
                            ? const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FooterInfo(),
                                  FooterSiteMap(),
                                  FooterCompany(),
                                  FooterSubscribe(),
                                ],
                              )
                            : Metrics.isCompact(context)
                                ? const Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterInfo(),
                                          FooterSiteMap(),
                                        ],
                                      ),
                                      SizedBox(height: 36),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterCompany(),
                                          FooterSubscribe(),
                                        ],
                                      ),
                                    ],
                                  )
                                : const Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterInfo(),
                                        ],
                                      ),
                                      SizedBox(height: 24),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterSiteMap(),
                                        ],
                                      ),
                                      SizedBox(height: 24),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterCompany(),
                                        ],
                                      ),
                                      SizedBox(height: 24),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
