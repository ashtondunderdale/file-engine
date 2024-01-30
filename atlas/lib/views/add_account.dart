import 'package:flutter/material.dart';
import 'package:fluttergames/widgets/navigation_panel.dart';

class AddAccount extends StatefulWidget {
  AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  TextEditingController titleController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  // Added variables for dropdown and checkbox
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
              width: 1200,
              height: 600,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 230, 230),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    const SizedBox(height: 20),
                    DropdownButton<String>(
                      value: selectedType,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            selectedType = newValue;
                          });
                        }
                      },
                      items: ['Select Type', 'Savings', 'Expense']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
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
                          style: TextStyle(),
                        ),
                      ],
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
