import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Function onPress;
  ReusableCard({@required this.color, this.cardChild, this.onPress});

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
