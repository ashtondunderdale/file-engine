import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergames/data.dart';
import '../models/account.dart';
import '../models/profile.dart';

class DatabaseService {
  static CollectionReference profilesCollection =
      FirebaseFirestore.instance.collection("Accounts");

  static const String docId = "testProfileID";

  static Future<void> addAccountToProfile(String profileId, Account account) async {
    try {
      
      final DocumentReference profileDocRef = profilesCollection.doc(profileId);
      final DocumentSnapshot profileSnapshot = await profileDocRef.get();

      if (!profileSnapshot.exists) {
        await profileDocRef.set({
          'name': "Current",
          'balance': 0.0,
          'accountNumber': "60290155",
          'bank': "Santander",
          'accounts': [],
        });
      }

      await profileDocRef.update({
        'accounts': FieldValue.arrayUnion([
          {
            'title': account.title,
            'type': account.type,
            'amount': account.amount,
            'date': account.date,
            'isIncome': account.isIncome,
            'month': account.month,
          }
        ]),
      });

      print("Account added to profile successfully.");
    } 
    catch (error) {
      print("Error adding account to profile: $error");
    }
  }

  static Future<void> loadActiveAccounts() async {
    try {
      final DocumentSnapshot documentSnapshot =
          await profilesCollection.doc(docId).get();

      if (documentSnapshot.exists) {
        final List<dynamic> accountsData =
            documentSnapshot.get('accounts') ?? [];

        activeProfile!.accounts = accountsData
            .map((accountData) => Account(
                  title: accountData['title'],
                  type: accountData['type'],
                  amount: accountData['amount'],
                  date: accountData['date'].toString(),
                  isIncome: accountData['isIncome'],
                  month: accountData['month'],
                ))
            .toList();

        print("Active accounts loaded successfully.");
      } else {
        print("Document does not exist.");
      }
    } catch (error) {
      print("Error loading active accounts: $error");
    }
  }

  static Future<void> saveProfileBalance(double balance) async {
    try {
      final DocumentReference docRef = profilesCollection.doc(docId);

      await docRef.update({
        'balance': balance,
      });

      print("Profile balance saved successfully.");
    } 
    catch (error) {
      print("Error saving profile balance: $error");
    }
  }

  static Future<double> loadProfileBalance() async {
    try {
      final DocumentSnapshot documentSnapshot =
          await profilesCollection.doc(docId).get();

      if (documentSnapshot.exists) {
        final double balance = documentSnapshot.get('balance') ?? 0.0;

        print("Profile balance loaded successfully.");
        return balance;
      } else {
        print("Document does not exist.");
        return 0.0;
      }
    } 
    catch (error) {
      print("Error loading profile balance: $error");
      return 0.0;
    }
  }

  static Future<Profile?> loadProfile(String profileId) async {
    try {
      final DocumentSnapshot documentSnapshot =
          await profilesCollection.doc(profileId).get();

      if (documentSnapshot.exists) {
        final Map<String, dynamic> profileData =
            (documentSnapshot.data() as Map<String, dynamic>) ?? {};

        return Profile(
          name: profileData['name'] ?? "",
          balance: profileData['balance'] ?? 0.0,
          accountNumber: profileData['accountNumber'] ?? "",
          bank: profileData['bank'] ?? "",
          accounts: [],
        );
      } else {
        print("Document does not exist.");
        return null;
      }
    } catch (error) {
      print("Error loading profile: $error");
      return null;
    }
  }

  static Future<void> setActiveProfile(Profile profile) async => activeProfile = profile;
  

}

