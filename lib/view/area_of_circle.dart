import 'package:flutter/material.dart';
import 'dart:math';

class AreaOfCircleView extends StatefulWidget {
  const AreaOfCircleView({super.key});

  @override
  State<AreaOfCircleView> createState() => _AreaOfCircleViewState();
}

class _AreaOfCircleViewState extends State<AreaOfCircleView> {
  double radius = 0;
  double area = 0;

  final TextEditingController radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Area of Circle')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // Radius Input Field with Box
              TextField(
                controller: radiusController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter Radius',
                  border: OutlineInputBorder(), // Adds box around input
                  filled: true, // Fills the background
                  fillColor: Colors.grey[200], // Light grey background color
                ),
                onChanged: (value) {
                  setState(() {
                    radius = double.tryParse(value) ?? 0;
                  });
                },
              ),
              const SizedBox(height: 8),

              // Displaying Area Value
              Text('Area: $area', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 8),

              // Calculate Area Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      area = pi * radius * radius;
                    });
                  },
                  child: const Text('Calculate Area'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
