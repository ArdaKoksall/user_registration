import 'package:flutter/material.dart';

// Show a snackbar with the given text

void show(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

