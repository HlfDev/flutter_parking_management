import 'package:flutter/material.dart';

import 'design_system.dart';

final ThemeData appThemeLight = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.white,
  ),
  primaryColor: AppColors.secondary,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  highlightColor: AppColors.primary,
);
