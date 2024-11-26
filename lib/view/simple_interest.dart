import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double interest = 0;

  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Interest')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // Principal Input Field with Box
              TextField(
                controller: principalController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter Principal Amount',
                  border: OutlineInputBorder(), // Adds box around input
                  filled: true, // Fills the background
                  fillColor: Colors.grey[200], // Light grey background color
                ),
                onChanged: (value) {
                  setState(() {
                    principal = double.tryParse(value) ?? 0;
                  });
                },
              ),
              const SizedBox(height: 8),

              // Rate of Interest Input Field with Box
              TextField(
                controller: rateController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter Rate of Interest',
                  border: OutlineInputBorder(), // Adds box around input
                  filled: true, // Fills the background
                  fillColor: Colors.grey[200], // Light grey background color
                ),
                onChanged: (value) {
                  setState(() {
                    rate = double.tryParse(value) ?? 0;
                  });
                },
              ),
              const SizedBox(height: 8),

              // Time Input Field with Box
              TextField(
                controller: timeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter Time (years)',
                  border: OutlineInputBorder(), // Adds box around input
                  filled: true, // Fills the background
                  fillColor: Colors.grey[200], // Light grey background color
                ),
                onChanged: (value) {
                  setState(() {
                    time = double.tryParse(value) ?? 0;
                  });
                },
              ),
              const SizedBox(height: 8),

              // Displaying Interest Value
              Text('Interest: $interest', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 8),

              // Calculate Interest Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      interest = (principal * rate * time) / 100;
                    });
                  },
                  child: const Text('Calculate Interest'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
