import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxForgotRow extends StatelessWidget {
  final bool? checkValue;
  final void Function(bool?)? checkOnChanged;
  final Function()? forgotOnPressed;
  const CheckboxForgotRow({
    super.key,
    this.checkValue,
    this.checkOnChanged,
    this.forgotOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: BorderSide(
            color: Color(0xff7C5BFD),
            width: 1.5
          ),
          activeColor: Colors.transparent,
          checkColor: Color(0xff24019C),
          value: checkValue,
          onChanged: checkOnChanged,
        ),
        Text(
          'Remember Me',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff4A4C56),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: forgotOnPressed,
          child: Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff7C5BFD),
            ),
          ),
        ),
      ],
    );
  }
}
