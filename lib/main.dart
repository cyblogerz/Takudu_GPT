import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:takudu_gpt/config/themes/light_theme.dart';
import 'package:takudu_gpt/presentation/screens/chat_home.dart';

import 'config/themes/dark_theme.dart';

void main() {
  runApp(const ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme1,
      title: 'Flutter Demo',
      home: ChatHome(),
    );
  }
}
