import 'package:flutter/material.dart';
import 'package:lhr/main.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final userName = TextEditingController();
  final userEmail = TextEditingController();

  void InsertData() {
    if (userName.text == "" && userEmail.text == "") {
      print("fill up input");
    }
  }

  @override
  Widget build(BuildContext context) {
    var userName = " ";
    var userEmail = " ";
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Center(
        child: Card(
          shadowColor: Colors.red,
          child: Container(
            width: 566,
            color: Colors.red[50],
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Signup',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                  ),
                  const Text(
                    'Create your account',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Enter your name"),
                          helperText: "92 300****733",
                        ),
                      ),
                    ),
                  ),
                  Center(
                  @action
                   (){
                    c
            return ();
            }
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Enter  Phone Number "),
                          prefix: Text(
                            "92 ",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
