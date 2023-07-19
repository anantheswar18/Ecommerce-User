import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  String errorPassword ='';
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    if (password == confirmPassword) {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } else {
      throw Exception("The password is incorrect");
    }
  }


 Future<void> signInWithGoogle()async{

    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth =await googleUser?.authentication;

AuthCredential  credential =  GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
   );

  UserCredential userCredential = await  FirebaseAuth.instance.signInWithCredential(credential);

  print(userCredential.user?.displayName);
  }



  Future<void> signOut() async {
   await _firebaseAuth.signOut();
  }
}
