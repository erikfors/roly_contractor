import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class ExperiencesImage extends StatelessWidget {
  const ExperiencesImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/roly-website.appspot.com/o/AlonePictures%2Ffloor.jpg?alt=media&format&fit=crop&w=870&q=80',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 90,
              right: -60,
              child: Image.asset(
                'Clock.png'.image,
                width: 120,
                height: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
