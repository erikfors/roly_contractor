import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/app/home.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/app/widgets/icon_btn.dart';
import 'package:ventura/core/core.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
     required this.onScrollToItem,
  })  :
        super(key: key);

final Function(Section) onScrollToItem;


  @override
  Widget build(BuildContext context) {
    List<String> links = [
      'About Us',
      'Services',
      'Projects',
      'Contact Us'
    ];


    return Column(
      children: [
        BaseContainer(
          child: SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                Row(
                  children: [
                    if (Metrics.isDesktop(context) || Metrics.isTablet(context))
                      ...List.generate(links.length, (index) {
                        final link = links[index];

                        return Padding(
                          padding: EdgeInsets.only(left: index != 0 ? 24 : 0),
                          child: TextButton(
                            onPressed: () {

                              switch(index){
                                case 0:
                                  onScrollToItem(Section.aboutUs); 
                                  break;
                                case 1:
                                  onScrollToItem(Section.experiences); 
                                  break;
                                case 2:
                                  onScrollToItem(Section.completedProjects); 
                                  break;
                                case 3:
                                  onScrollToItem(Section.footer); 
                                  break;
                              }
                            },
                            child: link.poppins(
                              fontWeight: FontWeight.w500,
                              color: white,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        );
                      }),
                    if (Metrics.isMobile(context) || Metrics.isCompact(context))
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: IconBtn(
                          icon: FontAwesomeIcons.bars,
                          onTap: () {},
                        ),
                      ),
                  ],
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
      ],
    );
  }
}
