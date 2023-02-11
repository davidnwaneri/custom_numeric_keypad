import 'package:flutter/material.dart';

/// A widget that builds a numeric keypad which
/// mimics the Os numeric keypad on Android and IOS devices
/// or other touch-enabled devices.
class NumericKeyPad extends StatelessWidget {
  /// Creates a widget that builds the numeric keypad.
  const NumericKeyPad({
    super.key,
    required this.onInputNumber,
    required this.onClearLastInput,
    required this.onClearAll,
  });

  final ValueSetter<int> onInputNumber;
  final VoidCallback onClearLastInput;
  final VoidCallback onClearAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO: Build NumericKeyPad
      ],
    );
  }
}
