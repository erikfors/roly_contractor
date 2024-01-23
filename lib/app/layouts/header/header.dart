import 'package:flutter/material.dart';
import 'package:ventura/app/components/appbar/appbar.dart';
import 'package:ventura/app/home.dart';
import 'package:ventura/app/widgets/base_container.dart';
import 'package:ventura/core/core.dart';

import 'header_left.dart';
import 'header_right.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.onScrollToItem,
  })  :
        super(key: key);


   final Function(Section) onScrollToItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: Metrics.width(context),
      height: 720,
      color: greenBorder,
      child:   Column(
        children: [
          Appbar( onScrollToItem: onScrollToItem),
          const Expanded(
            child: BaseContainer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderLeft(),
                  HeaderRight(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
