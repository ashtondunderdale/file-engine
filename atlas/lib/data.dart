import 'models/account.dart';
import 'models/profile.dart';

List<Profile> profiles = [
    Profile(name: "Current", balance: 5625.49, accountNumber: "60290155", bank: "Santander", entries: [
      Account(amount: 2.49, date: DateTime.now(), isIncome: true),
      Account(amount: 31.20, date: DateTime.now(), isIncome: false),
      Account(amount: 5, date: DateTime.now(), isIncome: false),
      Account(amount: 1203.68, date: DateTime.now(), isIncome: true),
    ])
  ];

  Profile? activeProfile;