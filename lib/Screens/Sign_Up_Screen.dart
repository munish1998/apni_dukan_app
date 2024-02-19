import 'package:apni_dukan_app/Screens/Onboarding_Screen3.dart';
import 'package:apni_dukan_app/Screens/Tutorial_Screen.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isNameValid = false;
  bool _isEmailValid = false;
  bool _isPasswordValid = false;
  bool _isChecked = false;
  bool _isPasswordVisible = false; // Track password visibility

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateName(String value) {
    setState(() {
      _isNameValid = value.isNotEmpty;
    });
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
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 195, 90, 52),
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: Icon(Icons.check, color: Colors.white)),
                ),
                SizedBox(
                  height: 45,
                ),
                Text(
                  'Success',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Your account has been successfully ',
                  style: TextStyle(
                    fontSize: 17,
                    color: const Color.fromARGB(81, 0, 0, 0),
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  'registered ',
                  style: TextStyle(
                    fontSize: 17,
                    color: const Color.fromARGB(81, 0, 0, 0),
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
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
      body: Stack(
        children: [
          Image.asset('assets/images/image4.png'),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: Container(
                height: size.height * 0.69,
                width: size.width * 0.999,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.05),
                  child: Column(
                    children: [
                      const Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      SizedBox(
                        width: size.width * 0.8,
                        height: size.height * 0.1,
                        child: TextFormField(
                          controller: _nameController,
                          onChanged: _validateName,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 195, 90, 52),
                              ),
                            ),
                            suffixIcon: _isNameValid
                                ? const Icon(
                                    Icons.check,
                                    color: Color.fromARGB(255, 195, 90, 52),
                                  )
                                : null,
                          ),
                        ),
                      ),
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
                      SizedBox(
                        width: size.width * 0.8,
                        height: size.height * 0.1,
                        child: TextFormField(
                          controller: _passwordController,
                          onChanged: _validatePassword,
                          obscureText:
                              !_isPasswordVisible, // Hide/show password based on visibility state
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 195, 90, 52),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isPasswordVisible =
                                      !_isPasswordVisible; // Toggle password visibility
                                });
                              },
                              child: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.05, top: size.height * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: _isChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  _isChecked = newValue ?? false;
                                });
                              },
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(fontSize: 15),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'I agree to the Grocery ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms of Service ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 195, 90, 52),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'and\n ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'privacy policy',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 195, 90, 52),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
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
                              'SIGN UP',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 15),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Color.fromARGB(255, 195, 90, 52),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/image6.png',
              color: Color.fromARGB(255, 195, 90, 52),
            ),
          ),
          Positioned(
            top: size.height * 0.31,
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
                    child: Icon(
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
