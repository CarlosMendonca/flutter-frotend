import 'package:flutter/material.dart';

class FairpayFormField extends StatelessWidget {
  const FairpayFormField({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 12),
        DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border.fromBorderSide(BorderSide(color: Colors.black, width: 2)),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: ''),
            ),
          ),
        ),
      ],
    );
  }
}
