import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colorProperty, this.cardChild, this.onPress});

  final Color colorProperty;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    // If we have a BoxDecoration in the container then color property should be inside it only
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colorProperty,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
