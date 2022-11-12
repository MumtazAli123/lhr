import 'package:flutter/material.dart';
import 'package:lhr/every_widget/widget_005.dart';
import 'package:lhr/popup.dart';
import 'package:lhr/sidebar.dart';
import 'package:lhr/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<Widget> body = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person)
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const ActionSheetApp(),
      drawer: const Sidebar(),

      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Signup()));
            },
            child: const Icon(Icons.account_balance_wallet),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Widget500()));
        },
        child: const Text('click'),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
