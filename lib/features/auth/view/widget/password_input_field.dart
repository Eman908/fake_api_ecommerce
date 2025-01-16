import 'package:flutter/material.dart';
import 'package:products_api/features/auth/view/widget/border_style.dart';
import 'package:products_api/features/auth/view/widget/validator.dart';

// ignore: must_be_immutable
class PasswordCustomButton extends StatefulWidget {
  PasswordCustomButton({
    super.key,
    required this.controller,
  });
  bool isPassword = true;
  final TextEditingController controller;

  @override
  State<PasswordCustomButton> createState() => _PasswordCustomButtonState();
}

class _PasswordCustomButtonState extends State<PasswordCustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value) {
        return MyValidators.passwordValidator(value);
      },
      obscureText: widget.isPassword,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: const TextStyle(color: Colors.grey),
        alignLabelWithHint: true,
        hintText: 'Enter Password',
        prefixIcon: const Icon(Icons.lock, color: Colors.blueAccent),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              widget.isPassword = !widget.isPassword;
            });
          },
          child: Icon(widget.isPassword
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        enabledBorder: inputBorderStyle(Colors.grey),
        focusedBorder: inputBorderStyle(Colors.blueAccent),
        focusedErrorBorder: inputBorderStyle(Colors.red),
        errorBorder: inputBorderStyle(Colors.red),
      ),
    );
  }
}
