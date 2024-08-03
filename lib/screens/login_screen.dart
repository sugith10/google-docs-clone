import 'package:flutter/material.dart';

import '../utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          label: const Text("Sign In With Google"),
          icon: Image.asset(
            "assets/g-logo-2.png",
            height: 20,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: kWhiteColor,
            foregroundColor: kBlackColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
           
          ),
        ),
      ),
    );
  }
}
