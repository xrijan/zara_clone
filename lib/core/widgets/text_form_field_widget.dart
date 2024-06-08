import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function()? suffixIconOnTap;
  const TextFormFieldWidget(
      {super.key,
      required this.controller,
      this.onChanged,
      this.validator,
      this.suffixIconOnTap,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodyLarge,
      cursorColor: const Color.fromARGB(255, 56, 22, 191),
      cursorHeight: 16,
      cursorWidth: 2,
      maxLines: 1,
      // onChanged: (value) {
      //   setState(() {});
      //   _formKey.currentState!.validate();
      // },
      onChanged: onChanged,
      // validator: (val) {
      //   if (val!.isEmpty) {
      //     return 'Email is required';
      //   }
      //   return null;
      // },
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: const EdgeInsets.only(bottom: 0, right: 0, left: 0),
        errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.red,
            ),
        suffixIcon: controller.text.isNotEmpty
            ? GestureDetector(
                // onTap: () {
                //   _emailController.clear();
                //   setState(() {});
                // },
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
