import "package:flutter/material.dart";

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({ required this.margin, this.height, this.child,
    Key? key,
  }) : super(key: key);
  final EdgeInsetsGeometry margin;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
     height: height,
      child:child,
    );
  }
}