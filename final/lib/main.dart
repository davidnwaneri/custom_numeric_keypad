import 'package:custom_numeric_keypad/numeric_keypad.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const title = 'Custom Numeric Keypad';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomNumPadPage(title: title),
    );
  }
}

class CustomNumPadPage extends StatefulWidget {
  const CustomNumPadPage({super.key, required this.title});

  final String title;

  @override
  State<CustomNumPadPage> createState() => _CustomNumPadPageState();
}

class _CustomNumPadPageState extends State<CustomNumPadPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // TODO: Implement method to input number to TextField

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1E33),
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
                // TODO: Add a TextField
                ),
          ),
          Expanded(
            flex: 2,
            child: NumericKeyPad(),
          ),
        ],
      ),
    );
  }
}
