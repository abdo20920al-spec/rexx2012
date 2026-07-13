import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;


  // إنشاء حساب جديد
  Future<User?> register(
      String email,
      String password,
      ) async {

    try {

      UserCredential result =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return result.user;

    } catch (e) {

      print("Register Error: $e");
      return null;

    }
  }



  // تسجيل الدخول
  Future<User?> login(
      String email,
      String password,
      ) async {

    try {

      UserCredential result =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return result.user;

    } catch (e) {

      print("Login Error: $e");
      return null;

    }
  }



  // تسجيل الخروج
  Future<void> logout() async {

    await _auth.signOut();

  }



  // المستخدم الحالي
  User? get currentUser {

    return _auth.currentUser;

  }

}
