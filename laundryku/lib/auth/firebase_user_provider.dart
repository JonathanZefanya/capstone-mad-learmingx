import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class laundrykuFirebaseUser {
  laundrykuFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

laundrykuFirebaseUser? currentUser = laundrykuFirebaseUser(null);
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<laundrykuFirebaseUser> laundrykuFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<laundrykuFirebaseUser>((user) => currentUser = laundrykuFirebaseUser(user));
