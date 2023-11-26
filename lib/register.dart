import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _inits();
}

class _inits extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Login'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.alarm),
          ),
        ],
      ),
      body: Text("register"),
    );
  }
}
