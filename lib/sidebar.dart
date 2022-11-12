import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  String nameCity = "";
  final _currencies = ["Rupees", "Dollar", "AED", 'SAR' "Others"];
  @override
  Widget build(BuildContext context) {
    debugPrint("Favorite City widget is created");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sidebar"),
      ),
      body: Container(
        margin: const EdgeInsets.all(11.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint(
                      "set State is called, this tells framework to redraw the favCity widget ");
                  nameCity = userInput;
                });
              },
            ),
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint(
                      "set State is called, this tells framework to redraw the favCity widget ");
                  nameCity = userInput;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
