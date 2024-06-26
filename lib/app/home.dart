import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ventura/core/core.dart';

import 'layouts/footer/footer.dart';
import 'layouts/layouts.dart';


enum Section {
  aboutUs,
  experiences,
  completedProjects,
  footer,
  home
}

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  late ScrollController _baseController;

  final Map<Section, GlobalKey> sectionKeys = {
    Section.aboutUs: GlobalKey(),
    Section.experiences: GlobalKey(),
    Section.completedProjects: GlobalKey(),
    Section.footer: GlobalKey(),
    Section.home: GlobalKey(),
  };

  void scrollToItem(Section section) {
    Scrollable.ensureVisible(sectionKeys[section]!.currentContext!, duration: const Duration(milliseconds: 480));
  }

  @override
  void initState() {
    _baseController = ScrollController();
    _baseController.addListener(() {
      if (_baseController.offset > 500) {
        ref.read(scrollProvider.notifier).change(true);
      } else {
        ref.read(scrollProvider.notifier).change(false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _baseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SizedBox(
        width: Metrics.width(context),
        height: Metrics.height(context),
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _baseController,
              child: Column(
                children: [
                  Header( key: sectionKeys[Section.home],onScrollToItem: scrollToItem,),
                  Container(
                    width: Metrics.width(context),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xfffef4ec),
                          Color(0xffffffff),
                          Color(0xfffef4ec),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        const HowItWorks(),
                        Container(
                          width: Metrics.width(context),
                          height: 2,
                          color: const Color(0xfff2e8df),
                        ),
                         AboutUs(key: sectionKeys[Section.aboutUs]),
                         Experiences(key: sectionKeys[Section.experiences]),
                         CompletedProjects(key: sectionKeys[Section.completedProjects]),
                         const SizedBox(height: 250),
                        //const CustomDecoratives(),
                      ],
                    ),
                  ),
                   Footer(key: sectionKeys[Section.footer],onScrollToItem: scrollToItem,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
