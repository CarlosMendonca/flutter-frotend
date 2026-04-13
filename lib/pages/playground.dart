import 'package:flutter/material.dart';
import 'package:juntos/pages/button_styles.dart';
import 'package:juntos/widgets/fairpay_list_item2.dart';

class Playground extends StatelessWidget {
  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonStyles = Theme.of(context).extension<AppButtonStyles>()!;

    return Scaffold(
      body: ListView(
        children: [
          FairpayListItem1(),
          const SizedBox(height: 16),
          const FairpayListItem2(
            name: "Carlos Mendonça text text text text text",
            description: "Lorem ipsum dolor sit amet text text text text text text text text text text text text text",
            amount: 20.00,
            currency: Currency.usd,
          ),
          const SizedBox(height: 16),
          const FairpayListItem2(
            name: "Carlos Mendonça text text text text text",
            description: "Lorem ipsum dolor sit amet text text text text text text text text text text text text text",
            amount: -2000.00,
            currency: Currency.jpy,
          ),
        ],
      ),
    );
  }
}

class FairpayListItem1 extends StatelessWidget {
  FairpayListItem1({super.key});
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 32),
        Checkbox(value: true, onChanged: null),
        SizedBox(width: 18),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: Colors.white,
            ),

            child: Row(
              children: [
                SizedBox(width: 16),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: CircleAvatar(
                    backgroundColor: const Color(
                      0xFFFFCA62,
                    ), // Your primary yellow
                    radius:
                        24, // This makes the total diameter 40px, matching your buttons

                    child: const FlutterLogo(size: 48),
                  ),
                ),
                SizedBox(width: 16),

                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Hug text height
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      // TOP ROW: Name, Amount, Edit
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Carlos Mendonça",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(width: 16),
                          GestureDetector( // TODO: should it be TapRegion?
                            behavior: HitTestBehavior
                                .opaque, // Ensures the empty space between icon and text is tappable
                            onTap: () {
                              // Redirects the tap to the TextField's FocusNode
                              _focusNode.requestFocus();
                            },
                            child: Padding(
                              // Adding padding here increases the physical "hit area" for fingers
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [

                                  // 2. The Dynamic-Width TextField
                                  const Text(
                                    "EUR ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: TextField(
                                      focusNode: _focusNode,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                            decimal: true,
                                          ),
                                      decoration: const InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.zero,
                                        border: InputBorder.none,
                                        hintText: "0.00",
                                      ),
                                    ),
                                  ),

                                  // 3. The Spacing and Icon (Now inside the hit area)
                                  const SizedBox(width: 8),
                                  const Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: Color(0xFFFFCA62),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 24),
                        ],
                      ),

                      const SizedBox(height: 4), // Tiny gap between lines
                      // BOTTOM ROW: Full width under the top row
                      const Padding(
                        padding: EdgeInsets.only(right: 24, bottom: 16),
                        child: Text(
                          "paid you via PayPal",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 24),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

