import 'package:flutter/material.dart';
import 'package:zara/core/utils/validate.dart';
import 'package:zara/core/widgets/padded_scaffold.dart';
import 'package:zara/core/widgets/password_form_field.dart';
import 'package:zara/core/widgets/text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return PaddedScaffold(
      appBar: _buildAppBar(),
      body: _buildFormBody(context),
    );
  }

  Form _buildFormBody(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LOG IN TO YOUR ACCOUNT',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 40),
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
                  return 'This field is mandatory';
                } else if (Validate.isEmail(value) == false) {
                  return 'Please enter a valid email address';
                }
                return null;
              }),
          const SizedBox(height: 20),
          PasswordFormFieldWidget(
            controller: _passwordController,
            labelText: 'PASSWORD',
            onChanged: (value) {
              setState(() {});
              _formKey.currentState!.validate();
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'This field is mandatory';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.white),
                  ))),
          const SizedBox(height: 20),
          Text(
            'Have you forgotten your password?',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 60),
          Text(
            'NEED AN ACCOUNT?',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(color: Colors.white),
                  ))),
          const Spacer(),
          Text(
            'Help center',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // Navigate to the settings page
          },
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
      ],
    );
  }
}
