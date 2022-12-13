// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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

class ApiFirebase {
  final String name;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String image5;
  final String logo;
  final String address;
  final String contactNumber;
  final String fb;
  final String details;
  final String mapLink;
  final String price;
  final String offerPrice;

  ApiFirebase({
    required this.name,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.logo,
    required this.address,
    required this.contactNumber,
    required this.fb,
    required this.details,
    required this.mapLink,
    required this.price,
    required this.offerPrice,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'image1': image1,
        'image2': image2,
        'image3': image3,
        'image4': image4,
        'image5': image5,
        'logo': logo,
        'address': address,
        'contactNumber': contactNumber,
        'fb': fb,
        'details': details,
        'mapLink': mapLink,
        'price': price,
        'offerPrice': offerPrice,
      };

  static ApiFirebase fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return ApiFirebase(
      name: snapshot['name'] as String,
      image1: snapshot['image1'] as String,
      image2: snapshot['image2'] as String,
      image3: snapshot['image3'] as String,
      image4: snapshot['image4'] as String,
      image5: snapshot['image5'] as String,
      logo: snapshot['logo'] as String,
      address: snapshot['address'] as String,
      contactNumber: snapshot['contactNumber'] as String,
      fb: snapshot['fb'] as String,
      details: snapshot['details'] as String,
      mapLink: snapshot['mapLink'] as String,
      price: snapshot['price'] as String,
      offerPrice: snapshot['offerPrice'] as String,
    );
  }
}
