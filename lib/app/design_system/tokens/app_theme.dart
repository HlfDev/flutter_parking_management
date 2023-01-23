// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../design_system.dart';

final ThemeData appThemeLight = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.secondary),
  primaryColor: AppColors.secondary,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  highlightColor: AppColors.primary,
);
