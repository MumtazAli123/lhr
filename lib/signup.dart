import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final userName = TextEditingController();
  final userEmail = TextEditingController();

  Future<List> sendData() async {
    final Res = await http
        .post(Uri.parse("https://babarfurniture.com/mumtaz/insert.php"), body: {
      "name": userName.text,
      "email": userEmail.text,
    });
    return jsonDecode(Res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Center(
        child: Card(
          shadowColor: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: SizedBox(
              width: 496,
              height: 490,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Signup',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                    ),
                    const Text(
                      'Create your account',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(12),
                        child: TextField(
                          controller: userName,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Enter your name"),
                            helperText: "92 300****733",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      child: TextField(
                        controller: userEmail,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Enter  Phone Number "),
                          prefix: Text(
                            "92 ",
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(21),
                        child: ElevatedButton(
                          onPressed: sendData,
                          child: const Text("Submit"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
