import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addEmployeeDetails(
    Map<String, dynamic> employeeInfo,
    String Id,
  ) async {
    return await FirebaseFirestore.instance
        .collection('Employee')
        .doc(Id)
        .set(employeeInfo);
  }

  Future<Stream<QuerySnapshot>> getEmployeeDetails() async {
    return await FirebaseFirestore.instance.collection('Employee').snapshots();
  }

  Future updateEmployeDetail(String Id, Map<String, dynamic> updateInfo) async {
    return await FirebaseFirestore.instance
        .collection('Employee')
        .doc(Id)
        .update(updateInfo);
  }

  Future deleteEmployeDetail(String Id) async {
    return await FirebaseFirestore.instance
        .collection('Employee')
        .doc(Id)
        .delete();
  }
}
