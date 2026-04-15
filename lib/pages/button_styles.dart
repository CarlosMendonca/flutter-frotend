
import 'package:flutter/material.dart';

class AppButtonStyles extends ThemeExtension<AppButtonStyles> {
  final ButtonStyle? primary;
  final ButtonStyle? secondary;
  final ButtonStyle? ghost;

  const AppButtonStyles({
    required this.primary,
    required this.secondary,
    required this.ghost,
  });

  @override
  AppButtonStyles copyWith({ButtonStyle? primary, ButtonStyle? secondary, ButtonStyle? ghost}) {
    return AppButtonStyles(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      ghost: ghost ?? this.ghost,
    );
  }

  @override
  AppButtonStyles lerp(ThemeExtension<AppButtonStyles>? other, double t) {
    if (other is! AppButtonStyles) return this;
    return AppButtonStyles(
      primary: ButtonStyle.lerp(primary, other.primary, t),
      secondary: ButtonStyle.lerp(secondary, other.secondary, t),
      ghost: ButtonStyle.lerp(ghost, other.ghost, t),
    );
  }
}