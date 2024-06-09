import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function()? suffixIconOnTap;
  const TextFormFieldWidget(
      {super.key,
      required this.controller,
      required this.labelText,
      this.onChanged,
      this.validator,
      this.suffixIconOnTap,
       this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodyLarge,
      cursorColor: const Color.fromARGB(255, 56, 22, 191),
      cursorHeight: 16,
      cursorWidth: 2,
      maxLines: 1,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: const EdgeInsets.only(bottom: 0, right: 0, left: 0),
        errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.red,
            ),
        suffixIcon: controller.text.isNotEmpty
            ? GestureDetector(
                onTap: suffixIconOnTap,
                child: Container(
                    margin: const EdgeInsets.only(left: 28),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 44, 43, 43),
                    ),
                    child:
                        const Icon(Icons.close, color: Colors.white, size: 12)),
              )
            : null,
      ),
    );
  }
}
