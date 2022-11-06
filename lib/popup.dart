import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return PopUp();
  }
}

class PopUp extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopUp"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                    const PopupMenuItem(child: Text('First')),
                    const PopupMenuItem(child: Text('Second')),
                  ])
        ],
      ),
    );
  }
}
