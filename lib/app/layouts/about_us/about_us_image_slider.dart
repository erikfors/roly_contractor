import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

import 'image_clider_controller.dart';

class AboutUsImageSlider extends StatefulWidget {
  const AboutUsImageSlider({Key? key}) : super(key: key);

  @override
  State<AboutUsImageSlider> createState() => _AboutUsImageSliderState();
}

class _AboutUsImageSliderState extends State<AboutUsImageSlider> {
  List<String> images = [
    'https://firebasestorage.googleapis.com/v0/b/roly-website.appspot.com/o/AlonePictures%2Ffivepictures%2Fhouse.jpg?alt=media&format&fit=crop&w=774&q=80',
    'https://firebasestorage.googleapis.com/v0/b/roly-website.appspot.com/o/AlonePictures%2Ffivepictures%2Fcocina.jpg?alt=media&format&fit=crop&w=774&q=80',
    'https://firebasestorage.googleapis.com/v0/b/roly-website.appspot.com/o/AlonePictures%2Ffivepictures%2Fbathroom.jpg?alt=media&format&fit=crop&w=774&q=80',
    'https://firebasestorage.googleapis.com/v0/b/roly-website.appspot.com/o/AlonePictures%2Ffivepictures%2Fstairs.jpg?alt=media&format&fit=crop&w=774&q=80',
    'https://firebasestorage.googleapis.com/v0/b/roly-website.appspot.com/o/AlonePictures%2Ffivepictures%2Ffloor.jpg?alt=media&format&fit=crop&w=774&q=80',
  ];
  late PageController _controller;
  int currentPage = 0;

  @override
  void initState() {
    _controller = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.25,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));
    double plus = Metrics.isDesktop(context) ? 0 : (0.5 * (1 - normalize(min: 976, max: 1440, data: Metrics.width(context))));
    _controller = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.25 + plus,
    );
    return Column(
      children: [
        SizedBox(
          height: 600 + 100 * pad,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (val) => setState(() => currentPage = val),
            itemCount: images.length,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final img = images[index];

              return Padding(
                padding: EdgeInsets.only(left: 36 * pad, right: 36 * pad),
                child: AnimatedScale(
                  duration: const Duration(milliseconds: 240),
                  scale: currentPage == index ? 1 : 0.75,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 240),
                    opacity: currentPage == index ? 1 : 0.25,
                    child: Image.network(img, fit: BoxFit.cover),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 64),
        ImageSliderController(
          currentPage: currentPage,
          images: images,
          prev: currentPage != 0
              ? () {
                  _controller.animateToPage(
                    currentPage - 1,
                    duration: const Duration(milliseconds: 240),
                    curve: Curves.linear,
                  );
                }
              : null,
          next: (currentPage != images.length - 1)
              ? () {
                  _controller.animateToPage(
                    currentPage + 1,
                    duration: const Duration(milliseconds: 240),
                    curve: Curves.linear,
                  );
                }
              : null,
        ),
      ],
    );
  }
}
