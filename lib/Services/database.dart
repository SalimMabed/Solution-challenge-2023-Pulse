import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  final String aid;
  Database({required this.aid});
  final CollectionReference appointments =
      FirebaseFirestore.instance.collection('appointments');

  Future rendez(String name) async {
    return await appointments.doc(aid).set({
      'name': name,
    });
  }

  getdata() async {
    FirebaseFirestore.instance.collection("appointments").get().then((value) {
      value.docs.forEach((element) {
        print(element.data());
        print("=======================================");
      });
    });
  }
}
