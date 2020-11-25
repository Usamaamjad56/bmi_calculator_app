import 'package:flutter/material.dart';

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors, this.cardWidget, this.onPressed});
  final Widget cardWidget;
  final Color colors;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardWidget,
        decoration: BoxDecoration(
          color: colors, //Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
