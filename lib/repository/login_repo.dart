import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_pos/repository/profile_details_repo.dart';

import '../Screens/Authentication/profile_setup.dart';
import '../Screens/Authentication/success_screen.dart';

final logInProvider = ChangeNotifierProvider((ref) => LogInRepo());

class LogInRepo extends ChangeNotifier {
  String email = '';
  String password = '';

  Future<void> signIn(BuildContext context) async {
    EasyLoading.show(status: 'Login...');
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      EasyLoading.showSuccess('Successful');
      if (await ProfileRepo().isProfileSetupDone()) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessScreen(email: email)));
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileSetup()));
      }
    } on FirebaseAuthException catch (e) {
      EasyLoading.showError(e.message.toString());
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No user found for that email.'),
            duration: Duration(seconds: 3),
          ),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Wrong password provided for that user.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    } catch (e) {
      EasyLoading.showError('Failed with Error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }
}
