import 'package:flutter/material.dart';
import 'package:tugas_besar/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String tittle;
  final double widht;
  final Function() onPrassed;
  final EdgeInsets margin;

  const CustomButton({
    super.key,
    required this.tittle,
    this.widht = double.infinity,
    required this.onPrassed,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: 55,
      margin: margin,
      child: TextButton(
        onPressed: onPrassed,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          tittle,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
