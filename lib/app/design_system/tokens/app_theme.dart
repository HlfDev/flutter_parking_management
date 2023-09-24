// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../design_system.dart';

final ThemeData appThemeLight = ThemeData(
  useMaterial3: true,
  primaryColor: AppColors.secondary,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  highlightColor: AppColors.primary,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.secondary,
    background: AppColors.bgWhite,
  ),
);
