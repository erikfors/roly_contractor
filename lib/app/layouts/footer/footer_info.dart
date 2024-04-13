import 'package:flutter/material.dart';
import 'package:ventura/core/core.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 20 + 10 * pad),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                Image.asset(
                  'Logo.png'.icon,
                  width: 110,
                  height: 60,
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  isAntiAlias: true,
            ),
            SizedBox(height: 24 + 8 * pad),
            '+1 (914) 661-8390'.poppins(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 14 + 4 * pad,
              height: 1.5,
            ),
            SizedBox(height: 16 + 8 * pad),
            'rolycapote@gmail.com'.poppins(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 14 + 4 * pad,
              height: 1.5,
            ),
            // SizedBox(height: 16 + 8 * pad),
            // 'Miami, Florida'.poppins(
            //   color: white,
            //   fontWeight: FontWeight.w500,
            //   fontSize: 13 + 3 * pad,
            //   height: 1.5,
            // ),
          ],
        ),
      ),
    );
  }
}
