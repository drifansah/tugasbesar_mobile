import 'package:flutter/material.dart';
import 'package:tugas_besar/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String tittle;
  final String hinText;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.tittle,
    required this.hinText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hinText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
