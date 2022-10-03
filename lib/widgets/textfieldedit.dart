import 'package:flutter/material.dart';

class TextFieldEdit extends StatelessWidget {
  final String hinText;
  final TextEditingController controller;
  final Function()? visible;
  final bool? isObscure;

  const TextFieldEdit({
    super.key,
    required this.hinText,
    required this.controller,
    this.visible,
    this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: visible == null ? false : isObscure ?? true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        

        hintText: hinText,
        suffixIcon: visible == null
            ? null
            : IconButton(
                onPressed: visible,
                icon: isObscure != false
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off)),
      ),
    );
  }
}
