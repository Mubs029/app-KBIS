import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoNumbersTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;

  const NoNumbersTextField({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (newValue) {
        // Filter out numeric characters
        final nonNumericValue = newValue.replaceAll(RegExp(r'[0-9]'), '');
        onChanged(nonNumericValue);
      },
      inputFormatters: [
        FilteringTextInputFormatter.deny(
            RegExp(r'[0-9]')), // Deny numeric input
      ],
      keyboardType: TextInputType.text, // Set keyboard type to text
      decoration: InputDecoration(
        hintText: 'Enter text',
        suffixIcon: Icon(Icons.keyboard),
      ),
    );
  }
}
