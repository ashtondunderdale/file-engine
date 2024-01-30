import 'package:fluttergames/models/account.dart';

class Profile {
  
  String name;
  double balance; 
  String accountNumber;
  String bank;

  List<Account> entries;

  Profile({required this.name, required this.balance, required this.accountNumber, required this.bank, required this.entries});
}