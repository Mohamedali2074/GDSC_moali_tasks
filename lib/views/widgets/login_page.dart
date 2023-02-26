import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:task2_register_page/constant.dart';
import 'package:task2_register_page/custom_paint.dart';
import 'package:task2_register_page/main_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: kPrimaryColor,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.grey.shade200,
                          labelText: ' Email',
                          labelStyle: const TextStyle(color: kPrimaryColor),
                          hintStyle: const TextStyle(color: kPrimaryColor),
                          prefixIcon: const Icon(
                            FontAwesomeIcons.envelope,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: kPrimaryColor,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.grey.shade200,
                          labelText: ' Password',
                          labelStyle: const TextStyle(color: kPrimaryColor),
                          hintStyle: const TextStyle(color: kPrimaryColor),
                          prefixIcon: const Icon(
                            Icons.lock_outlined,
                            color: kPrimaryColor,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const MainButton(
                      backgroundColor: kPrimaryColor,
                      textColor: Colors.white,
                      text: 'Login',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const MainButton(
                      backgroundColor: Colors.white,
                      textColor: kPrimaryColor,
                      text: 'Register',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
