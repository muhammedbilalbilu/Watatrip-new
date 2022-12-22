import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Message {
  final String date;
  final String message;
  final String receiverId;

  final String senderId;

  const Message({
    required this.date,
    required this.message,
    required this.receiverId,
    required this.senderId,
  });

  static Message fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Message(
      message: snapshot["message"],
      date: snapshot["date"],
      receiverId: snapshot["receiverId"],
      senderId: snapshot["senderId"],
    );
  }

  Map<String, dynamic> toJson() => {
        "message": message,
        "date": date,
        "receiverId": receiverId,
        "senderId": senderId,
      };
}
