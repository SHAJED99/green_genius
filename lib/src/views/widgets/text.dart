import 'package:flutter/material.dart';

//! ------------------------------------------------------------------------------------------------ Heading
class CustomTextHeading extends StatelessWidget {
  const CustomTextHeading({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = null;
  const CustomTextHeading.L({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = true;
  const CustomTextHeading.S({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = false;

  final bool onPrimary;
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final bool? _isBig;
  final bool? isBold;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tT = t.textTheme;
    final tS = _isBig == null
        ? tT.headlineMedium
        : _isBig
            ? tT.headlineLarge
            : tT.headlineSmall;

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: maxLine == null ? null : TextOverflow.ellipsis,
      style: tS?.copyWith(color: color ?? (onPrimary ? t.colorScheme.onPrimary : t.colorScheme.onSurface), fontWeight: isBold == null ? null : (isBold! ? FontWeight.bold : FontWeight.w100)),
    );
  }
}

// TextStyle customTextHeadingStyle(BuildContext context, {bool onPrimary = false, Color? color, bool isBold = false, TextSizeType textSizeType = TextSizeType.normal}) {
//   final t = Theme.of(context);
//   final tT = t.textTheme;
//   TextStyle? tS = tT.headlineMedium;
//   if (textSizeType == TextSizeType.large) tS = tT.headlineLarge;
//   if (textSizeType == TextSizeType.small) tS = tT.headlineSmall;

//   return TextStyle();
// }

//! ------------------------------------------------------------------------------------------------ Title
class CustomTextTitle extends StatelessWidget {
  const CustomTextTitle({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = null;
  const CustomTextTitle.L({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = true;
  const CustomTextTitle.S({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = false;

  final bool onPrimary;
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final bool? _isBig;
  final bool? isBold;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tT = t.textTheme;
    final tS = _isBig == null
        ? tT.titleMedium
        : _isBig
            ? tT.titleLarge
            : tT.titleSmall;

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: maxLine == null ? null : TextOverflow.ellipsis,
      style: tS?.copyWith(color: color ?? (onPrimary ? t.colorScheme.onPrimary : t.colorScheme.onSurface), fontWeight: isBold == null ? null : (isBold! ? FontWeight.bold : FontWeight.w100)),
    );
  }
}

//! ------------------------------------------------------------------------------------------------ Body
class CustomTextBody extends StatelessWidget {
  const CustomTextBody({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = null;
  const CustomTextBody.L({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = true;
  const CustomTextBody.S({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = false;

  final bool onPrimary;
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final bool? _isBig;
  final bool? isBold;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tT = t.textTheme;
    final tS = _isBig == null
        ? tT.bodyMedium
        : _isBig
            ? tT.bodyLarge
            : tT.bodySmall;

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: maxLine == null ? null : TextOverflow.ellipsis,
      style: tS?.copyWith(color: color ?? (onPrimary ? t.colorScheme.onPrimary : t.colorScheme.onSurface), fontWeight: isBold == null ? null : (isBold! ? FontWeight.bold : FontWeight.w100)),
    );
  }
}

//! ------------------------------------------------------------------------------------------------ Label
class CustomTextLabel extends StatelessWidget {
  const CustomTextLabel({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = null;
  const CustomTextLabel.L({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = true;
  const CustomTextLabel.S({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = false;

  final bool onPrimary;
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final bool? _isBig;
  final bool? isBold;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tT = t.textTheme;
    final tS = _isBig == null
        ? tT.labelMedium
        : _isBig
            ? tT.labelLarge
            : tT.labelSmall;

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: maxLine == null ? null : TextOverflow.ellipsis,
      style: tS?.copyWith(color: color ?? (onPrimary ? t.colorScheme.onPrimary : t.colorScheme.onSurface), fontWeight: isBold == null ? null : (isBold! ? FontWeight.bold : FontWeight.w100)),
    );
  }
}

//! ------------------------------------------------------------------------------------------------ Display
class CustomTextDisplay extends StatelessWidget {
  const CustomTextDisplay({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = null;
  const CustomTextDisplay.L({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = true;
  const CustomTextDisplay.S({super.key, this.onPrimary = false, required this.text, this.textAlign = TextAlign.start, this.color, this.isBold, this.maxLine}) : _isBig = false;

  final bool onPrimary;
  final String text;
  final TextAlign textAlign;
  final Color? color;
  final bool? _isBig;
  final bool? isBold;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tT = t.textTheme;
    final tS = _isBig == null
        ? tT.displayMedium
        : _isBig
            ? tT.displayLarge
            : tT.displaySmall;

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: maxLine == null ? null : TextOverflow.ellipsis,
      style: tS?.copyWith(color: color ?? (onPrimary ? t.colorScheme.onPrimary : t.colorScheme.onSurface), fontWeight: isBold == null ? null : (isBold! ? FontWeight.bold : FontWeight.w100)),
    );
  }
}

// enum TextSizeType {
//   large,
//   normal,
//   small,
// }
