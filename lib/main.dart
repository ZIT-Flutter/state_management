import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/page_one.dart';
import 'package:provider_app/provider/provider_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberProvider())
      ],
      child: const MaterialApp(
        home: PageOne(),
      ),
    );
  }
}
