import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';
import 'package:fluttergames/models/account.dart';
import 'package:fluttergames/services/database.dart';
import 'package:fluttergames/widgets/navigation_panel.dart';
import 'package:intl/intl.dart';

import 'home.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  TextEditingController titleController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  String selectedType = 'Select Type';
  bool isIncome = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shape: const Border(
          bottom: BorderSide(color: Color.fromARGB(255, 212, 212, 212)),
        ),
        toolbarHeight: 80,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "ATLAS",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 73, 73, 73),
                    letterSpacing: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Good Morning, Ashton",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          const NavigationPanel(),
          const Spacer(),
          Center(
            child: Container(
              width: 800,
              height: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 230, 230),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: TextField(
                        controller: titleController,
                        decoration: const InputDecoration(
                          labelText: 'Title',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 200,
                      child: TextField(
                        controller: amountController,
                        decoration: const InputDecoration(
                          labelText: 'Amount',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 64),
                      child: DropdownButton<String>(
                        value: selectedType,
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedType = newValue;
                            });
                          }
                        },
                        items: ['Select Type', 'General', 'Travel', 'Salary', 'Rent', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 87, 87, 87),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          fillColor: MaterialStateColor.resolveWith((states) => Colors.grey),
                          value: isIncome,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                isIncome = value;
                              });
                            }
                          },
                        ),
                        const Text(
                          'Income',
                          style: TextStyle(
                            color: Color.fromARGB(255, 87, 87, 87),

                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48, left: 8),
                      child: TextButton(
                        onPressed: () async {
                          if (amountController.text.isNotEmpty && titleController.text.isNotEmpty) {
                            Account account = Account(
                              title: titleController.text, 
                              type: selectedType == "Select Type" ? "GENERAL" : selectedType, 
                              amount: double.tryParse(amountController.text) ?? 0.0,
                              date: DateTime.now().toString(), 
                              isIncome: isIncome,
                              month: DateFormat('MMMM').format(DateTime.now())
                            );

                            if (isIncome) {
                              activeProfile!.balance += double.tryParse(amountController.text) ?? 0.0;
                            }
                            else {
                              activeProfile!.balance -= double.tryParse(amountController.text) ?? 0.0;
                            }

                            await DatabaseService.addAccountToProfile("testProfileID", account);
                            await DatabaseService.saveProfileBalance(activeProfile!.balance);

                            setState(() {
                              activeProfile!.accounts.add(account);
                            });

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Home(profile: activeProfile!,)),
                            );
                          }
                        },
                        child: const Text( 
                        "Add Account",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
