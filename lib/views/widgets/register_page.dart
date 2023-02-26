import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task2_register_page/constant.dart';
import 'package:task2_register_page/custom_paint.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          color: kPrimaryColor,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          // fillColor: Colors.grey.shade200,
                          labelText: ' Full Name',
                          labelStyle: TextStyle(color: kPrimaryColor),
                          hintStyle: TextStyle(color: kPrimaryColor),
                          prefixIcon: Icon(
                            FontAwesomeIcons.user,
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
                          labelText: 'Confirm Password',
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
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.grey.shade200,
                          labelText: 'Phone Number',
                          labelStyle: const TextStyle(color: kPrimaryColor),
                          hintStyle: const TextStyle(color: kPrimaryColor),
                          prefixIcon: const Icon(
                            Icons.phone_outlined,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: kPrimaryColor,
                        ),
                        child: const Text(
                          'Register',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                              width: 1.0,
                              color: kPrimaryColor,
                            )),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ),
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
