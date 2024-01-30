import 'models/account.dart';
import 'models/profile.dart';

List<Profile> profiles = [
    Profile(name: "Current", balance: 5625.49, accountNumber: "60290155", bank: "Santander", accounts: [
      Account(title: "account 1", type: "GENERAL", amount: 2.49, date: DateTime.now(), isIncome: true),
      Account(title: "THE GROCERIES", type: "GENERAL", amount: 31.20, date: DateTime.now(), isIncome: false),
      Account(title: "HELP ME", type: "GENERAL", amount: 5, date: DateTime.now(), isIncome: false),
      Account(title: "PLEASE IM TRAPP-", type: "SALARY", amount: 1203.68, date: DateTime.now(), isIncome: true),
      Account(title: "account 1", type: "GENERAL", amount: 2.49, date: DateTime.now(), isIncome: true),
      Account(title: "THE GROCERIES", type: "GENERAL", amount: 31.20, date: DateTime.now(), isIncome: false),
      Account(title: "HELP ME", type: "GENERAL", amount: 5, date: DateTime.now(), isIncome: false),
      Account(title: "PLEASE IM TRAPP-", type: "SALARY", amount: 1203.68, date: DateTime.now(), isIncome: true),
    ])
  ];

  Profile? activeProfile = profiles.first;