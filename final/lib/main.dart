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

  void inputNumber(int value) {
    _controller.text += value.toString();
  }

  void clearLastInput() {
    if(_controller.text.isNotEmpty){
      _controller.text = _controller.text.substring(
        0,
        _controller.text.length - 1,
      );
    }
  }

  void clearAll() {
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1E33),
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  controller: _controller,
                  autofocus: true,
                  showCursor: true,
                  keyboardType: TextInputType.none,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: NumericKeyPad(
              onInputNumber: inputNumber,
              onClearLastInput: clearLastInput,
              onClearAll: clearAll,
            ),
          ),
        ],
      ),
    );
  }
}
