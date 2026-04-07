import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonStyles = Theme.of(context).extension<AppButtonStyles>()!;
    
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 104,
        titleSpacing: 0,
        actionsPadding: EdgeInsets.only(right: 32),
        centerTitle: true,
        
        leading: IconButton(style: buttonStyles.secondary, onPressed: () {}, icon: const Icon(Icons.arrow_back),),
        
        title: Text("Activities", style: TextStyle(fontSize: 18),),
        actions: [
          SizedBox(width: 24,),
          IconButton(style: buttonStyles.secondary, onPressed: () {}, icon: const Icon(Icons.search),),
          SizedBox(width: 24,),
          IconButton(style: buttonStyles.primary, onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}

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