import 'package:flutter/material.dart';
import 'package:tugas_besar/shared/theme.dart';
import 'package:tugas_besar/ui/widgets/custom_text_form_field.dart';
import 'package:tugas_besar/ui/widgets/cutom_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tittle() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          "Join us and get\nyour next journey",
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextField(
          tittle: 'Full Name',
          hinText: 'Your full name',
        );
      }

      Widget emailInput() {
        return CustomTextField(
          tittle: "Email Address",
          hinText: 'Your email address',
        );
      }

      Widget passwordInput() {
        return CustomTextField(
          tittle: "Password",
          hinText: 'Your password',
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return CustomTextField(tittle: "Your Hobby", hinText: 'Your hobby'); 
      }

      Widget submitButton() {
        return CustomButton(
            tittle: 'Get Started',
            onPrassed: () {
              Navigator.pushNamed(context, '/bonus');
            });
      }

      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            "Terms and Conditions",
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            tittle(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
