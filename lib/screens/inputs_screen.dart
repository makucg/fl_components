import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': '',
      'surname': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs Screen'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            // onChanged: () => print(formValues),
            child: Column(children: [
              CustomInputField(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  helperText: 'Name must be at least 3 characters',
                  prefixIcon: Icons.person,
                  suffixIcon: Icons.check,
                  formProperty: 'name',
                  formValues: formValues),
              const SizedBox(height: 30),
              CustomInputField(
                  labelText: 'Surname',
                  hintText: 'Enter your surname',
                  helperText: 'Surename must be at least 3 characters',
                  prefixIcon: Icons.person,
                  suffixIcon: Icons.check,
                  formProperty: 'surname',
                  formValues: formValues),
              const SizedBox(height: 30),
              CustomInputField(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  helperText: 'Email must be at least 3 characters',
                  prefixIcon: Icons.person,
                  suffixIcon: Icons.check,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues),
              const SizedBox(height: 30),
              CustomInputField(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  helperText: 'Password must be at least 3 characters',
                  prefixIcon: Icons.person,
                  suffixIcon: Icons.check,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues),
              const SizedBox(height: 30),
              DropdownButtonFormField<String>(
                icon: const Icon(Icons.work),
                value: 'admin',
                items: const [
                  DropdownMenuItem(
                    value: 'admin',
                    child: Text('Admin'),
                  ),
                  DropdownMenuItem(
                    value: 'user',
                    child: Text('User'),
                  ),
                ],
                onChanged: (value) => formValues['role'] = value ?? 'admin',
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          print(formValues);
                        }
                      },
                      child: const Center(child: Text('Submit')))),
            ]),
          ),
        ));
  }
}
