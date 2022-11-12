import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsPge extends StatefulWidget {
  const ChatsPge({super.key});

  @override
  State<ChatsPge> createState() => _ChatsPgeState();
}

class _ChatsPgeState extends State<ChatsPge> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "Bhaa Imran",
      "Sir Haroon",
      "Ali",
      "Sir Noman",
      "Jani",
      "Sindhi",
      "Pthan",
      "Asif",
      "Zubair"
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Chats"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("./assets/images/login.png"),
                ),
                title: Text(arrNames[index]),
                subtitle: Text("0300433495959"),
                trailing: Icon(Icons.email),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 20,
                thickness: 1,
              );
            },
            itemCount: arrNames.length));
  }
}
