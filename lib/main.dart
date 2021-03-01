import 'package:flutter/material.dart';
import 'package:weathy/app/app.dart';
import 'package:weathy/app/backend.dart';

void main() {
  final backend = Backend();

  runApp(Weathy(
    backend: backend,
  ));
}
