import 'package:flutter/material.dart';
import 'package:juntos/pages/button_styles.dart';
import 'package:juntos/widgets/fairpay_form_button.dart';
import 'package:juntos/widgets/fairpay_form_field.dart';

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
        
        title: Text("Activities", style: TextStyle(fontSize: 18, fontWeight: FontWeight(800)),),
        actions: [
          SizedBox(width: 24,),
          IconButton(style: buttonStyles.secondary, onPressed: () {}, icon: const Icon(Icons.search),),
          SizedBox(width: 24,),
          IconButton(style: buttonStyles.primary, onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FairpayFormField(label: 'FULL NAME'),
            SizedBox(height: 16),
            FairpayFormField(label: 'EMAIL/PHONE NUMBER'),
            SizedBox(height: 16),
            FairpayFormButton(label: 'Enabled', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
