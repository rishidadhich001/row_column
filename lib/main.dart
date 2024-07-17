import 'package:flutter/material.dart';
import 'package:row_column/calc.dart';
import 'package:row_column/chess.dart';
import 'package:row_column/dynamic.dart';
import 'package:row_column/icons.dart';
import 'package:row_column/icons_editor.dart';
import 'package:row_column/map.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Editor(),
    );
  }
}
