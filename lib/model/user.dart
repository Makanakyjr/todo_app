import 'package:firebase_auth/firebase_auth.dart';

class User {
  String name;
  String email;

  User({required this.email, required this.name});
}

Future<User> signUp(
    {required String email,
    required String password,
    required String username}) async {
  final firebaseInstance = FirebaseAuth.instance;
  final userCredentials = await firebaseInstance.createUserWithEmailAndPassword(
      email: email.trim(), password: password.trim());

  await userCredentials.user!.updateDisplayName(username.trim());
  return User(
      email: firebaseInstance.currentUser!.email!,
      name: firebaseInstance.currentUser!.displayName!);
}
