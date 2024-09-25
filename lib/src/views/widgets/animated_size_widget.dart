import 'package:flutter/material.dart';
import 'package:green_genius/components.dart';

class CustomAnimatedSize extends StatelessWidget {
  const CustomAnimatedSize({
    super.key,
    this.child,
    this.alignment = Alignment.center,
    this.duration = defaultDuration,
    this.curve = Curves.linear,
    this.clipBehavior = Clip.antiAlias,
    this.widthFactor,
    this.heightFactor,
  });
  final Widget? child;
  final AlignmentGeometry alignment;
  final Duration duration;
  final Curve curve;
  final Clip clipBehavior;
  final double? widthFactor;
  final double? heightFactor;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: AnimatedSize(
        curve: Curves.easeInOut,
        clipBehavior: clipBehavior,
        alignment: alignment,
        duration: duration,
        child: child ?? const SizedBox(),
      ),
    );
  }
}
