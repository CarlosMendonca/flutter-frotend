
import 'package:flutter/material.dart';

class AppButtonStyles extends ThemeExtension<AppButtonStyles> {
  final ButtonStyle? primary;
  final ButtonStyle? secondary;

  const AppButtonStyles({
    required this.primary,
    required this.secondary,
  });

  @override
  AppButtonStyles copyWith({ButtonStyle? primary, ButtonStyle? secondary}) {
    return AppButtonStyles(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  AppButtonStyles lerp(ThemeExtension<AppButtonStyles>? other, double t) {
    if (other is! AppButtonStyles) return this;
    return AppButtonStyles(
      primary: ButtonStyle.lerp(primary, other.primary, t),
      secondary: ButtonStyle.lerp(secondary, other.secondary, t),
    );
  }
}