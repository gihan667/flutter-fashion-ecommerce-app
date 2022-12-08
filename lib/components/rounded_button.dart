import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.borderRadius = kDefaultPadding * 2,
    this.color = kPrimaryColor,
    this.outline = false,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final String text;
  final double borderRadius;
  final Color color;
  final bool outline;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: outline ? Border.all(
          color: color
        ) : null,
        color: Colors.transparent,
      ),
      child: Material(
        color: outline ? Colors.transparent : color,
        borderRadius: BorderRadius.circular(borderRadius),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                color: outline ? kTextColorDark : kWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
        ),
      ),
    );
  }
}