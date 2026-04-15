import 'package:flutter/material.dart';
import 'package:juntos/pages/button_styles.dart';
import 'package:juntos/widgets/fairpay_form_button.dart';
import 'package:juntos/widgets/fairpay_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
        
        title: null,
        actions: [
          TextButton(
            style: buttonStyles.ghost?.copyWith(
              padding: const WidgetStatePropertyAll(EdgeInsets.all(18)),
            ),
            onPressed: () {},
            child: const Text(
              "Sign Up",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login", style: const TextStyle(fontSize: 38, fontWeight: FontWeight.w700)),
                Text("Welcome back!"),
                SizedBox(height: 48),
                FairpayFormField(label: 'EMAIL'),
                SizedBox(height: 16),
                FairpayFormField(label: 'PASSWORD'),
                SizedBox(height: 16),
              ],
            ),
          ),
          FairpayFormButton(label: 'Log In', onPressed: () {}),
        ],
      ),
    );
  }
}
