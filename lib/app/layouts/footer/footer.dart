import 'package:flutter/material.dart';
import 'package:ventura/app/home.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'footer_bottom.dart';
import 'footer_company.dart';
import 'footer_contact.dart';
import 'footer_info.dart';
import 'footer_sitemap.dart';
import 'footer_subscribde.dart';

class Footer extends StatelessWidget {
  const Footer({super.key, 
     required this.onScrollToItem,
  });

  final Function(Section) onScrollToItem;

  @override
  Widget build(BuildContext context) {

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
                            ?  Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const FooterInfo(),
                                  FooterSiteMap( onScrollToItem: onScrollToItem),
                                  FooterCompany( onScrollToItem: onScrollToItem),
                                  const FooterSubscribe(),
                                ],
                              )
                            : Metrics.isCompact(context)
                                ? Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const FooterInfo(),
                                          FooterSiteMap(onScrollToItem: onScrollToItem),
                                        ],
                                      ),
                                      const SizedBox(height: 36),
                                       Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterCompany(onScrollToItem: onScrollToItem),
                                          const FooterSubscribe(),
                                        ],
                                      ),
                                    ],
                                  )
                                :  Column(
                                    children: [
                                      const Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterInfo(),
                                        ],
                                      ),
                                      const SizedBox(height: 24),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterSiteMap(onScrollToItem: onScrollToItem),
                                        ],
                                      ),
                                      const SizedBox(height: 24),
                                       Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          FooterCompany(onScrollToItem: onScrollToItem),
                                        ],
                                      ),
                                      const SizedBox(height: 24),
                                      const Row(
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
