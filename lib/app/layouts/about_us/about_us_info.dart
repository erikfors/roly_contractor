import 'package:flutter/material.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

class AboutUsInfo extends StatelessWidget {
  const AboutUsInfo({
    Key? key,
    required this.pad,
  }) : super(key: key);

  final double pad;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Column(
        children: [
          const SizedBox(height: 80),
          'About us'.msMadi(
            color: const Color(0xff1f8b3a),
            fontSize: 52,
          ),
          const SizedBox(height: 20),
          if (!Metrics.isMobile(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 192 * pad),
                    child: 'Art & Craft of Renovation Design'.stixTwoText(
                      textAlign: TextAlign.right,
                      fontSize: 44 + 20 * pad,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 24 + (36 * pad)),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 260.0 * pad),
                    child:
                        'The spaces where we live, work, and play are fundamental to our daily experiences. Just like the design of the products and services we offer.'
                            .poppins(
                      fontSize: 14 + 4 * pad,
                      fontWeight: FontWeight.w500,
                      height: 1.75,
                    ),
                  ),
                ),
              ],
            ),
          if (Metrics.isMobile(context))
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 192 * pad),
                        child: 'Art & Craft of Renovation Design'.stixTwoText(
                          textAlign: TextAlign.center,
                          fontSize: 44 + 20 * pad,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 260.0 * pad),
                        child:
                            'The spaces where we live, work, and play are fundamental to our daily experiences. Just like the design of the products and services we offer.'
                                .poppins(
                          textAlign: TextAlign.center,
                          fontSize: 14 + 4 * pad,
                          fontWeight: FontWeight.w500,
                          height: 1.75,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
