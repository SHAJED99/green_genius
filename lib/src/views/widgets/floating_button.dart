import 'package:flutter/material.dart';
import 'package:green_genius/components.dart';
import 'package:on_process_button_widget/on_process_button_widget.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key, this.onTap, this.child});
  final Future<bool?>? Function()? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return OnProcessButtonWidget(
      expanded: false,
      height: defaultBoxHeight,
      margin: EdgeInsets.all(defaultPadding / 4),
      backgroundColor: Colors.transparent,
      iconColor: Theme.of(context).colorScheme.primary,
      onTap: onTap,
      child: child,
    );
  }
}