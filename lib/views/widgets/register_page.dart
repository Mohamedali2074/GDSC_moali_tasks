import 'package:flutter/material.dart';
import 'package:task2_register_page/constant.dart';
import 'package:task2_register_page/custom_paint.dart';
import 'package:task2_register_page/main_button.dart';
import 'package:task2_register_page/routes_manger.dart';
import 'package:task2_register_page/views/my_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  bool _visiblePassword = true;
  bool _visibleConfirmPassword = true;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomPaint(
                size: const Size(double.infinity, 200),
                painter: RPSCustomPainter(),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 64),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      MyTextFormField(
                        controller: _nameController,
                        validator: (val) =>
                            val!.isEmpty ? 'please enter your name' : null,
                        labelText: 'Full Name',
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        prefixIcon: Icons.person,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextFormField(
                        controller: _emailController,
                        validator: (val) =>
                            val!.isEmpty ? 'please enter your email' : null,
                        labelText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        prefixIcon: Icons.email,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextFormField(
                        controller: _passwordController,
                        validator: (val) =>
                            val!.isEmpty ? 'please enter your password' : null,
                        labelText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !_visiblePassword,
                        prefixIcon: Icons.lock,
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _visiblePassword = !_visiblePassword;
                            });
                          },
                          child: Icon(
                            _visiblePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextFormField(
                        controller: _confirmPasswordController,
                        validator: (val) => val!.isEmpty
                            ? 'please confirm your password'
                            : null,
                        labelText: 'Confirm Password',
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !_visibleConfirmPassword,
                        prefixIcon: Icons.lock,
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _visibleConfirmPassword =
                                  !_visibleConfirmPassword;
                            });
                          },
                          child: Icon(
                            _visibleConfirmPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextFormField(
                        controller: _phoneNumberController,
                        validator: (val) => val!.isEmpty
                            ? 'please enter your phone number'
                            : null,
                        labelText: 'Phone Number',
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        prefixIcon: Icons.phone,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      MainButton(
                        backgroundColor: kPrimaryColor,
                        textColor: Colors.white,
                        text: 'Register',
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context)
                                  .pushNamed(Routes.loginPageRoute);
                              _formKey.currentState!.reset();
                            } else {
                              debugPrint('there was an error');
                            }
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MainButton(
                        backgroundColor: Colors.white,
                        textColor: kPrimaryColor,
                        text: 'Login',
                        onPressed: () => Navigator.of(context)
                            .pushNamed(Routes.loginPageRoute),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
