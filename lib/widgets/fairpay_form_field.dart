import 'package:flutter/material.dart';

class FairpayFormField extends StatefulWidget {
  const FairpayFormField({
    super.key,
    required this.label,
  });

  final String label;

  @override
  State<FairpayFormField> createState() => _FairpayFormFieldState();
}

class _FairpayFormFieldState extends State<FairpayFormField> {
  final _focusNode = FocusNode();
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() => _hasFocus = _focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        const SizedBox(height: 12),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: _hasFocus
                ? const Border.fromBorderSide(BorderSide(color: Colors.black, width: 2))
                : null,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              focusNode: _focusNode,
              decoration: const InputDecoration.collapsed(hintText: ''),
            ),
          ),
        ),
      ],
    );
  }
}
