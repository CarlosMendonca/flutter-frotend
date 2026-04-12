import 'package:flutter/material.dart';
import 'package:juntos/pages/button_styles.dart';

class HomeDarkPage extends StatelessWidget {
  const HomeDarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonStyles = Theme.of(context).extension<AppButtonStyles>()!;

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            leadingWidth: 104,
            titleSpacing: 0,
            actionsPadding: EdgeInsets.only(right: 32),
            centerTitle: true,

            leading: IconButton(
              style: buttonStyles.secondary,
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),

            title: null,
            actions: [
              SizedBox(width: 24),
              IconButton(
                style: buttonStyles.secondary,
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              SizedBox(width: 24),
              IconButton(
                style: buttonStyles.primary,
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ],

            stretch: true,
            expandedHeight: 200,

            floating: true,
            pinned: true,
            snap: false,

            flexibleSpace: const FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Line 1: Label
                  Text(
                    'My Balance',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2), // Tight gap for a modern look
                  // Line 2: Top-Aligned Currency + Amount
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Forces alignment to the top
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 4.0,
                        ), // Fine-tune the "cap height"
                        child: Text(
                          '\$',
                          style: TextStyle(
                            fontSize: 12, // Small font
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        '684.00',
                        style: TextStyle(
                          fontSize: 32, // Large font for visibility
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1.0, // Removes extra line-height padding
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
    preferredSize: const Size.fromHeight(48.0),
    child: Container(
      color: Colors.white,
      child: const Center(child: Text("Fixed Category Filter")),
    ),
  ),
          ),
          SliverList.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text(
                    '$index',
                    textScaler: const TextScaler.linear(5.0),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: null,
      appBar: null,
    );
  }
}
