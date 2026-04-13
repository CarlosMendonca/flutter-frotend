import 'package:flutter/material.dart';
import 'package:juntos/pages/button_styles.dart';

class FairpayFormButton extends StatelessWidget {
  const FairpayFormButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final buttonStyles = Theme.of(context).extension<AppButtonStyles>()!;

    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: buttonStyles.primary?.copyWith(
          padding: const WidgetStatePropertyAll(EdgeInsets.all(18)),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
