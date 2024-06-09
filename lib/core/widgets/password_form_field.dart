import 'package:flutter/material.dart';

class PasswordFormFieldWidget extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const PasswordFormFieldWidget({
    super.key,
    required this.controller,
    this.onChanged,
    this.validator,
    required this.labelText,
  });

  @override
  PasswordFormFieldWidgetState createState() => PasswordFormFieldWidgetState();
}

class PasswordFormFieldWidgetState extends State<PasswordFormFieldWidget> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      style: Theme.of(context).textTheme.bodyLarge,
      cursorColor: const Color.fromARGB(255, 56, 22, 191),
      cursorHeight: 16,
      cursorWidth: 2,
      maxLines: 1,
      onChanged: widget.onChanged,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: widget.labelText,
        contentPadding: const EdgeInsets.only(bottom: 0, right: 0, left: 0),
        errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.red,
            ),
        suffixIcon: GestureDetector(
          onTap: _toggleVisibility,
          child: Container(
            margin: const EdgeInsets.only(left: 28),
            child: Icon(
              _obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              size: 16,
            ),
          ),
        ),
      ),
    );
  }
}
