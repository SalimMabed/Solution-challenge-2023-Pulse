import 'package:cloud_firestore/cloud_firestore.dart';

class Data {
  final CollectionReference test =
      FirebaseFirestore.instance.collection('test');
}
