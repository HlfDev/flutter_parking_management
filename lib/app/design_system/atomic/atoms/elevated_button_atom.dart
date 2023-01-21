// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../design_system.dart';

class ElevatedButtonAtom extends ElevatedButton {
  ElevatedButtonAtom.rounded({
    super.key,
    required super.child,
    required super.onPressed,
  }) : super(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.r_16)),
            ),
          ),
        );
}
