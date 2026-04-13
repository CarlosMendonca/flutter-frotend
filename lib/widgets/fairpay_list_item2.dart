import 'package:flutter/material.dart';

enum Currency { brl, eur, gbp, jpy, usd }

extension CurrencyExtension on Currency {
  String get symbol => switch (this) {
        Currency.brl => 'R\$',
        Currency.eur => '€',
        Currency.gbp => '£',
        Currency.jpy => '¥',
        Currency.usd => '\$',
      };

  int get decimalDigits => this == Currency.jpy ? 0 : 2;
}

class FairpayListItem2 extends StatelessWidget {
  const FairpayListItem2({
    super.key,
    required this.name,
    required this.description,
    required this.amount,
    required this.currency,
  });

  final String name;
  final String description;
  final double amount;
  final Currency currency;

  String get _formattedAmount {
    final sign = amount >= 0 ? '+' : '-';
    final abs = amount.abs().toStringAsFixed(currency.decimalDigits);
    return '$sign ${currency.symbol}$abs';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: CircleAvatar(
              backgroundColor: const Color(0xFFFFCA62),
              radius: 24,
              child: const FlutterLogo(size: 48),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Text(
                      _formattedAmount,
                      style: TextStyle(
                        color: amount >= 0
                            ? const Color(0xFF0EAD69)
                            : null,
                      ),
                    ),
                  ],
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}
