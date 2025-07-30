import 'package:flutter/material.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onDatabasePressed;
  final VoidCallback? onSearchPressed;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onDatabasePressed,
    this.onSearchPressed,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue.shade800,
      iconTheme: IconThemeData(
        color: Colors.white, // Set the color of the drawer icon
      ),
      title: Text(
        title,
        style: poppinsTextNormal.copyWith(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      actions: <Widget>[
        // IconButton(
        IconButton(
          onPressed: onSearchPressed,
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: onDatabasePressed,
          icon: const Icon(
            Icons.data_array,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
