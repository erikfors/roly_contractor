import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ventura/core/core.dart';

class HeaderRight extends StatelessWidget {
  const HeaderRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isBigScreen =
        Metrics.isDesktop(context) || Metrics.isTablet(context);
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));

    return isBigScreen
        ? Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 24,
                  bottom: 24,
                  left: 72,
                  right: 136 * pad,
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(64)),
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/roly-website.appspot.com/o/AlonePictures%2Fstairs.jpg?alt=media',
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 100,
                  child: Container(
                    width: 324,
                    height: 214,
                    color: white,
                    padding: const EdgeInsets.all(19),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 70,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xffdbdbd0),
                                      width: 2,
                                    ),
                                    top: BorderSide(
                                      color: Color(0xffdbdbd0),
                                      width: 2,
                                    ),
                                    left: BorderSide(
                                      color: Color(0xffdbdbd0),
                                      width: 2,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: 'Roly Renovations'.msMadi(
                                    color: orange,
                                    fontSize: 30,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 96,
                              height: 70,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xffdbdbd0),
                                    width: 2,
                                  ),
                                  top: BorderSide(
                                    color: Color(0xffdbdbd0),
                                    width: 2,
                                  ),
                                  left: BorderSide(
                                    color: Color(0xffdbdbd0),
                                    width: 2,
                                  ),
                                  right: BorderSide(
                                    color: Color(0xffdbdbd0),
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    'SINCE'.poppins(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      letterSpacing: 1,
                                      height: 1.25,
                                    ),
                                    '1999'.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      letterSpacing: 0.5,
                                      height: 1.25,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xffdbdbd0),
                                        width: 2,
                                      ),
                                      left: BorderSide(
                                        color: Color(0xffdbdbd0),
                                        width: 2,
                                      ),
                                      right: BorderSide(
                                        color: Color(0xffdbdbd0),
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  const Icon(
                                                    FontAwesomeIcons.solidStar,
                                                    color: Color(0xff30c677),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  'Testimonials'.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    height: 1.5,
                                                  ),
                                                ],
                                              ),
                                              '5/5'.poppins(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                height: 1.5,
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              RatingBar.builder(
                                                initialRating: 5.0,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemSize: 36,
                                                itemPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4.0),
                                                unratedColor: Colors.grey
                                                    .withOpacity(0.5),
                                                wrapAlignment:
                                                    WrapAlignment.start,
                                                itemBuilder: (context, _) =>
                                                    const Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : const SizedBox();
  }
}
