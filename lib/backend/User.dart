// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  final String lastname;
  final String username;
  final String birthday;
  final String number;

  const User({
    required this.username,
    required this.email,
    required this.uid,
    required this.lastname,
    required this.birthday,
    required this.number,
  });

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapshot["username"],
      uid: snapshot["uid"],
      email: snapshot["email"],
      lastname: snapshot["lastname"],
      birthday: snapshot["birthday"],
      number: snapshot["number"],
    );
  }

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
        "lastname": lastname,
        "birthday": birthday,
        "number": number,
      };
}
