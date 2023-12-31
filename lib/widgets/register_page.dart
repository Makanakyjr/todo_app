import 'package:flutter/material.dart';
import 'package:todo_app/home.dart';
import 'package:todo_app/login_page.dart';
import 'package:todo_app/model/user.dart';
import 'package:todo_app/signin_page.dart';
import 'package:todo_app/textfield_todo.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final othernames = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final name = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
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
                controller: name,
                hintText: ('Fullname'),
                obsecureText: false,
              ),
              const SizedBox(height: 30),
              MyTextField(
                controller: email,
                hintText: ('Email'),
                obsecureText: false,
              ),
              const SizedBox(height: 30),
              MyTextField(
                controller: password,
                hintText: ('Password'),
                obsecureText: true,
              ),
              const SizedBox(height: 30),
              MyTextField(
                controller: confirmPassword,
                hintText: ('Confirm Password'),
                obsecureText: true,
              ),
              const SizedBox(
                height: 50,
              ),
              SignInPage(
                onTap: () async {
                  await signUp(
                      email: email.text.trim(),
                      password: password.text.trim(),
                      username: "Ahmed");

                  if (context.mounted) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  }
                },
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
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 88, 149, 240),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
