import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Services'),
      ),
      body: const Center(
        child: Text('Services Page'),
      ),
    );
  }
}