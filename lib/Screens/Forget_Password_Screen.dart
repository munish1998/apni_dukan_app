import 'package:apni_dukan_app/Screens/Onboarding_Screen3.dart';
import 'package:apni_dukan_app/Screens/Tutorial_Screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isNameValid = false;
  bool _isEmailValid = false;
  bool _isPasswordValid = false;
  bool _isChecked = false;
  bool _isPasswordVisible = false; // Track password visibility

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateEmail(String value) {
    setState(() {
      _isEmailValid = value.isNotEmpty;
    });
  }

  void _validatePassword(String value) {
    setState(() {
      _isPasswordValid = value.isNotEmpty;
    });
  }

  void _showSignUpAlert() {
    final Size size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            height: 495,
            width: 370,
            // color: Colors.red,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/image7.png',
                    color: Color.fromARGB(255, 195, 90, 52),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 195, 90, 52),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                      child: Icon(Icons.check, color: Colors.white)),
                ),
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  'Success',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Your account has been successfully ',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(81, 0, 0, 0),
                    decoration: TextDecoration.none,
                  ),
                ),
                const Text(
                  'registered ',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(81, 0, 0, 0),
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: size.width * 0.7,
                  height: size.height * 0.07,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 195, 90, 52),
                    shape: BoxShape.rectangle,
                  ),
                  child: const Center(
                    child: Text(
                      'Go to Login Page',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
                // Text('Success'),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset('assets/images/image12.png'),
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: SingleChildScrollView(
                child: Container(
                  height: size.height * 00.51,
                  width: size.width * 0.999,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.05),
                    child: Column(
                      children: [
                        const Text(
                          'FORGET PASSWORD?',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        const Text(
                          'Enter your email or phone number',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'we will send you confirm code',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.04),
                        SizedBox(
                          width: size.width * 0.8,
                          height: size.height * 0.1,
                          child: TextFormField(
                            controller: _emailController,
                            onChanged: _validateEmail,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: const OutlineInputBorder(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 195, 90, 52),
                                ),
                              ),
                              suffixIcon: _isEmailValid
                                  ? const Icon(
                                      Icons.check,
                                      color: Color.fromARGB(255, 195, 90, 52),
                                    )
                                  : null,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        GestureDetector(
                          onTap: () {
                            _showSignUpAlert();
                          },
                          child: Container(
                            width: size.width * 0.8,
                            height: size.height * 0.08,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 195, 90, 52),
                              shape: BoxShape.rectangle,
                            ),
                            child: const Center(
                              child: Text(
                                'SEND OTP',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'assets/images/image6.png',
                            color: Color.fromARGB(255, 195, 90, 52),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: size.height * 0.005),
              height: 2.8,
              width: 80,
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: size.height * 00.24,
            left: size.width * 0.0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(45),
                topLeft: Radius.circular(40),
              ),
              child: Container(
                height: size.width * 0.2,
                width: size.width * 0.2,
                decoration: const BoxDecoration(color: Colors.black),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (_) => const TutorialScreen()),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
