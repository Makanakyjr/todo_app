import 'package:flutter/material.dart';
import 'package:todo_app/signin_page.dart';
import 'package:todo_app/textfield_todo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Icon(
              Icons.lock_clock_sharp,
              size: 100,
            ),
            const SizedBox(height: 50),
            const Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: usernameController,
              hintText: ('Username'),
              obsecureText: false,
            ),
            const SizedBox(height: 40),
            MyTextField(
              controller: passwordController,
              hintText: ('Password'),
              obsecureText: true,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password??',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SignInPage(
              onTap: signUserIn,
            ),
            const SizedBox(height: 30),
            const Column(
              children: [
                Text(
                  'Not a member? Register now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 88, 149, 240),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
