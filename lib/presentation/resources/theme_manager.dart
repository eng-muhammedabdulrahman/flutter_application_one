import 'package:flutter/material.dart';
import 'package:flutter_application_one/presentation/resources/color_manager.dart';
import 'package:flutter_application_one/presentation/resources/font_manager.dart';
import 'package:flutter_application_one/presentation/resources/styles_manager.dart';
import 'package:flutter_application_one/presentation/resources/values_manager.dart';

ThemeData getApplocationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.gray1,
    splashColor: ColorManager.lightPrimary, // ripple effect color
    // cardview theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.gray,
      elevation: AppSize.s4,
    ),
    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle:
            getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white)),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.gray1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(
                color: ColorManager.white, fontSize: FontSize.s17),
            backgroundColor: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),

    // text theme
    textTheme: TextTheme(
        displayLarge:
            getLightStyle(color: ColorManager.white, fontSize: FontSize.s22),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.darkGray, fontSize: FontSize.s16),
        titleMedium: getMediumStyle(
            color: ColorManager.lightGray, fontSize: FontSize.s14),
        bodyLarge: getRegularStyle(color: ColorManager.gray1),
        bodySmall: getRegularStyle(color: ColorManager.gray)),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle:
          getRegularStyle(color: ColorManager.gray, fontSize: FontSize.s14),
      // label style
      labelStyle:
          getMediumStyle(color: ColorManager.gray, fontSize: FontSize.s14),
      // error style
      errorStyle: getRegularStyle(color: ColorManager.error),
      // enable border style
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.gray, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      // focused border style
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      // error border style
      errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    ),
  );
}
