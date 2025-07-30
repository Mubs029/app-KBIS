import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;

  const CustomFloatingActionButton({Key? key, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue.shade800,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      onPressed: onPressed,
      child: const Icon(
        Icons.search,
        color: Colors.white,
      ),
    );
  }
}
