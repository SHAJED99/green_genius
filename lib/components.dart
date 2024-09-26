import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//! ------------------------------------------------------------------------------------------------ Company Information
const baseCompanyName = "";
const projectName = "Green Genius";

//! ------------------------------------------------------------------------------------------------ Sizes
get baseScreenSize => const Size(360, 800);
get defaultPadding => 24.sp;
get defaultBoxHeight => defaultPadding * 2;
get defaultCardHeight => defaultPadding * 6;
get defaultMaxWidth => 400.0;


Curve defaultCurve = Curves.easeInOut;

//* Border
get borderWidth1 => 3.sp;

//! ------------------------------------------------------------------------------------------------ Time
const defaultSplashScreenShow = Duration(seconds: 3);
const defaultDuration = Duration(milliseconds: 500);

//! ------------------------------------------------------------------------------------------------ Color
const primaryColor = Color(0xFF226C15);

//! ------------------------------------------------------------------------------------------------ Text
TextTheme get textTheme => GoogleFonts.interTextTheme(Typography.englishLike2018.apply(fontSizeFactor: 1.sp));

get buttonTheme => ButtonThemeData(height: defaultBoxHeight);

AppBarTheme _appBarTheme({Brightness brightness = Brightness.light}) {
  return AppBarTheme(
    toolbarHeight: defaultBoxHeight,
    surfaceTintColor: Colors.transparent,
    centerTitle: false,
    titleTextStyle: textTheme.titleLarge?.copyWith(color: brightness == Brightness.light ? Colors.black : Colors.white),
  );
}

//! ------------------------------------------------------------------------------------------------ Theme
ThemeData theme({Brightness brightness = Brightness.light}) {
  return ThemeData(
    useMaterial3: true,
    textTheme: textTheme,
    buttonTheme: buttonTheme,
    appBarTheme: _appBarTheme(brightness: brightness),
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor, brightness: brightness),
  );
}

SystemUiOverlayStyle setSafeAreaColor(BuildContext context) {
  if (Theme.of(context).brightness == Brightness.light) {
    return SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemStatusBarContrastEnforced: false,
    );
  } else {
    return SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemStatusBarContrastEnforced: false,
    );
  }
}