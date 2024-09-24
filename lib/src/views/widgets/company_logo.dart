import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'lib/assets/svg/polygon_technology.svg',
      colorFilter: Theme.of(context).brightness == Brightness.light
          ? null
          : ColorFilter.mode(
              Theme.of(context).colorScheme.onSurface,
              BlendMode.srcIn,
            ),
    );
  }
}