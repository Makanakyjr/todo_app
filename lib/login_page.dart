import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/home.dart';
import 'package:todo_app/signin_page.dart';
import 'package:todo_app/textfield_todo.dart';
import 'package:todo_app/widgets/register_page.dart';

class LoginPage extends StatefulWidget {
  // final void Function()? onTap;
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
              'Welcome Back',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: emailController,
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
              onTap: () async {
                final userCredential = await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim());
                print(userCredential.user!.email);
                if (context.mounted) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                }
              },
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Not a member? ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ));
                  },
                  child: const Text(
                    'Register now',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(88, 149, 240, 1),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
