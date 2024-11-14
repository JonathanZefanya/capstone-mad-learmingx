import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LaundrykuFirebaseUser {
  LaundrykuFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

LaundrykuFirebaseUser? currentUser = LaundrykuFirebaseUser(null);
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LaundrykuFirebaseUser> laundrykuFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<LaundrykuFirebaseUser>((user) => currentUser = LaundrykuFirebaseUser(user));
