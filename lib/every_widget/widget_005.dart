import 'package:flutter/material.dart';
import 'package:lhr/every_widget/call.dart';
import 'package:lhr/every_widget/chats.dart';

class Widget500 extends StatefulWidget {
  const Widget500({super.key});

  @override
  State<Widget500> createState() => _Widget500State();
}

class _Widget500State extends State<Widget500> {
  int _currentIndex = 0;
  List<Widget> body = [const ChatsPge(), const CallPage(), Icon(Icons.person)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Message",
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: "Call",
            icon: Icon(Icons.call),
          ),
          BottomNavigationBarItem(
            label: "Status",
            icon: Icon(Icons.signal_wifi_statusbar_4_bar),
          )
        ],
      ),
    );
  }
}
