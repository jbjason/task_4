import 'package:flutter/material.dart';
import 'package:task_4/core/util/mycolor.dart';
import 'package:task_4/core/util/mystring.dart';

abstract class AppColors {
  static const secondary = Color(0xFF3B76F6);
  static const accent = Color(0xFFD6755B);
  static const textDark = Color(0xFF53585A);
  static const textLigth = Color(0xFFF5F5F5);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighlight = secondary;
  static const cardLight = Color(0xFFEEEEEE);
  static const cardDark = Color(0xFF303334);
}

abstract class AppTheme {
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  /// Light theme and its settings.
  static ThemeData light() => ThemeData(
        visualDensity: visualDensity,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: MyColor.textColor,
            fontFamily: MyString.poppinsMedium,
            fontSize: 28,
          ),
          titleMedium: TextStyle(
            color: MyColor.textColor,
            fontSize: 16,
            fontFamily: MyString.poppinsMedium,
          ),
          titleSmall: TextStyle(
            fontSize: 12,
            color: MyColor.textColor,
            fontFamily: MyString.poppinsRegular,
          ),
          bodyLarge: TextStyle(
            fontSize: 14,
            color: MyColor.textColor,
            fontFamily: MyString.rubikRegular,
          ),
          bodyMedium: TextStyle(
            fontSize: 11,
            color: MyColor.textColor,
            fontFamily: MyString.rubikRegular,
          ),
          bodySmall: TextStyle(
            fontSize: 9,
            color: MyColor.textColor,
            fontFamily: MyString.rubikRegular,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        cardColor: AppColors.cardLight,
        iconTheme: const IconThemeData(color: AppColors.iconDark),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white, size: 20),
          backgroundColor: MyColor.skyPrimary,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 13.5,
            fontFamily: MyString.poppinsMedium,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MyColor.primary,
          accentColor: MyColor.primaryAccent,
        ),
        
        dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          contentTextStyle: TextStyle(
            fontFamily: "Poppins_Regular",
            fontSize: 14,
            color: MyColor.textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 14,
            fontFamily: MyString.rubikRegular,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: MyColor.textThird,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: MyColor.skyPrimary,
          ),
        ),
      );

  /// Dark theme and its settings.
  static ThemeData dark() => ThemeData().copyWith(
        visualDensity: visualDensity,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: AppColors.textLigth,
            fontSize: 17,
          ),
          titleMedium: TextStyle(
            color: AppColors.textLigth,
            fontSize: 11,
            letterSpacing: 0.3,
          ),
          bodyLarge: TextStyle(
            fontSize: 11,
            color: AppColors.textFaded,
          ),
          bodyMedium: TextStyle(
            fontSize: 11,
            color: AppColors.textFaded,
          ),
          bodySmall: TextStyle(
            fontSize: 11,
            color: AppColors.textFaded,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFF11161F),
        cardColor: AppColors.cardDark,
        iconTheme: const IconThemeData(color: AppColors.iconLight),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(fontSize: 12, color: MyColor.textThird),
          hintStyle: TextStyle(
              fontSize: 15, color: MyColor.textThird, letterSpacing: 1.2),
          prefixStyle: TextStyle(
            fontSize: 14,
            color: MyColor.textColor,
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          prefixIconColor: MyColor.textThird,
          fillColor: Color(0xFF11161F),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.white, width: 0.3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.white, width: 0.3),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      );
}
