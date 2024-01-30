import 'package:flutter/material.dart';
import 'package:ventura/app/home.dart';
import 'package:ventura/core/core.dart';

class FooterCompany extends StatelessWidget {
  const FooterCompany({
    Key? key, required this.onScrollToItem,
  }) : super(key: key);

  final Function(Section) onScrollToItem;

  @override
  Widget build(BuildContext context) {
    final pad = normalize(min: 976, max: 1440, data: Metrics.width(context));
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Company'.poppins(
            fontWeight: FontWeight.bold,
            color: white,
            fontSize: 18 + 6 * pad,
          ),
          SizedBox(height: 18 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'Miami, FL'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14 + 2 * pad,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 10 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'Naples, FL'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14 + 2 * pad,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 10 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'Homestead, FL'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14 + 2 * pad,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 10 + 6 * pad),
          TextButton(
            onPressed: () {},
            child: 'New York'.poppins(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14 + 2 * pad,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
