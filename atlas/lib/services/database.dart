import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/account.dart';

class DatabaseService {
  final CollectionReference accountCollection =
      FirebaseFirestore.instance.collection('accounts');

  Future updateAccounts(List<Account> accounts) async {
    // Convert the list of Account objects into a List<Map<String, dynamic>>
    List<Map<String, dynamic>> accountsData = accounts.map((account) => account.toMap()).toList();

    return await accountCollection.doc("accounts").set({
      'accounts': accountsData,
    });
  }
}
