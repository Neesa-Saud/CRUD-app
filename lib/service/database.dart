import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addEmployeeDetails(
    Map<String, dynamic> employeeInfo,
    String id,
  ) async {
    return await FirebaseFirestore.instance
        .collection('Employee')
        .doc(id)
        .set(employeeInfo);
  }

  Future<Stream<QuerySnapshot>> getEmployeeDetails() async {
    return await FirebaseFirestore.instance.collection('Employee').snapshots();
  }
}
