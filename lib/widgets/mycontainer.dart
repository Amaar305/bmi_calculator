import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  final Color colour;

  final Function onPress;

  const MyContainer({super.key,   required this.child, required this.colour, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
        onPress(),

      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: child,
      ),
    );
  }
}
