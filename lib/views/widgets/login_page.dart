import 'package:flutter/material.dart';
import 'package:task2_register_page/constant.dart';
import 'package:task2_register_page/custom_paint.dart';
import 'package:task2_register_page/main_button.dart';
import 'package:task2_register_page/routes_manger.dart';
import 'package:task2_register_page/views/my_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _visiblePassword = false;

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
          child: Form(
            key: _formKey,
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
                            'Login',
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
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
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
                        height: 20,
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
                        height: 50,
                      ),
                      MainButton(
                        backgroundColor: kPrimaryColor,
                        textColor: Colors.white,
                        text: 'Login',
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context)
                                  .pushNamed(Routes.mapPageRoute);
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
                        text: 'Register',
                        onPressed: () => Navigator.of(context)
                            .pushNamed(Routes.registerPageRoute),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




// (val) => val!.isEmpty ? 'please enter your email' : null,