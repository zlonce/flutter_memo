import 'package:flutter/material.dart';
import 'memo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '메모 목록',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MemoList(),
    );
  }
}
