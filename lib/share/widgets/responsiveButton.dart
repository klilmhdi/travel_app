import 'package:flutter/material.dart';

import '../../consts/AppColors.dart';
import 'appText.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isReponsive;
  final double? width;

  const ResponsiveButton({this.isReponsive = false, this.width = 120, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isReponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isReponsive == true ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: isReponsive == true
                  ? const AppText(
                      text: "Book Tickets now",
                      color: Colors.white,
                    )
                  : Container(),
            ),
            Image.asset("assets/images/button-one.png"),
          ],
        ),
      ),
    );
  }
}
