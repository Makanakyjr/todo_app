import 'package:flutter/material.dart';
import 'package:todo_app/login_page.dart';
import 'package:todo_app/signin_page.dart';
import 'package:todo_app/textfield_todo.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Icon(
              Icons.lock_clock_sharp,
              size: 100,
            ),
            const SizedBox(height: 50),
            const Text(
              'lets create an account for you!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: email,
              hintText: ('Email'),
              obsecureText: false,
            ),
            const SizedBox(height: 40),
            MyTextField(
              controller: password,
              hintText: ('Password'),
              obsecureText: true,
            ),
            const SizedBox(height: 40),
            MyTextField(
              controller: confirmPassword,
              hintText: ('Confirm Password'),
              obsecureText: true,
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 50,
            ),
            SignInPage(
              onTap: signUserIn,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already a member? ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 88, 149, 240),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
