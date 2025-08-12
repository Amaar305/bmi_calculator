import 'package:flutter/material.dart';

import '../constant.dart';

class ButtomContainer extends StatelessWidget {
  const ButtomContainer({
    super.key,
    required this.child,
    required this.onChanged,
  });
  final Widget child;
  final Function onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged();
      },
      child: Container(
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 20.0),
        child: child,
      ),
    );
  }
}
