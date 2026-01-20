import 'package:flutter/material.dart';
import 'package:vms_driver/presentation/pages/sign_in/sign_in_page.dart';
import 'package:vms_driver/presentation/pages/welcome/widgets/outline_button.dart';
import 'package:vms_driver/presentation/pages/welcome/widgets/primary_button.dart';
import 'package:vms_driver/presentation/widgets/onboard_assets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.35,
                child: Image.asset(OnboardAssets.welcome, fit: BoxFit.contain),
              ),

              const SizedBox(height: 30),

              const Text(
                'Welcome',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 8),

              const Text(
                'Have a better sharing experience',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),

              const Spacer(),

              PrimaryButton(
                text: 'Create an account',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
              ),

              const SizedBox(height: 14),

              OutlineButton(text: 'Log in', onTap: () {}),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
