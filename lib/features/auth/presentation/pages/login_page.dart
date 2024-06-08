import 'package:flutter/material.dart';
import 'package:zara/core/widgets/padded_scaffold.dart';
import 'package:zara/core/widgets/text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return PaddedScaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page
            },
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LOG IN TO YOUR ACCOUNT',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            TextFormFieldWidget(
                controller: _emailController,
                labelText: 'EMAIL',
                onChanged: (value) {
                  setState(() {});
                  _formKey.currentState!.validate();
                },
                suffixIconOnTap: () {
                  _emailController.clear();
                  setState(() {});
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                }),
          ],
        ),
      ),
    );
  }
}
