import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:watatrip/backend/User.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

final user = FirebaseAuth.instance.currentUser!.uid;

class ApiFirebaseData {
  Future<String> Apidataget(
      {required String name,
      required String image1,
      required String image2,
      required String image3,
      required String image4,
      required String image5,
      required String logo,
      required String address,
      required String contactNumber,
      required String fb,
      required String details,
      required String mapLink,
      required String price,
      required String offerPrice}) async {
    String res = "Some error Occurred";
    try {
      final docUser = firestore
          .collection('Apidata')
          .doc(user)
          .collection('data')
          .doc(user);
      ApiFirebase _apiFirebase = ApiFirebase(
          name: name,
          image1: image1,
          image2: image2,
          image3: image3,
          image4: image4,
          image5: image5,
          logo: logo,
          address: address,
          contactNumber: contactNumber,
          fb: fb,
          details: details,
          mapLink: mapLink,
          price: price,
          offerPrice: offerPrice);
      await docUser.set(_apiFirebase.toJson());
    } catch (err) {
      return err.toString();
    }
    return res;
  }
}
