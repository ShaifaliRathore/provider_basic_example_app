import 'package:basic_provider_example_app/pages/first.dart';
import 'package:basic_provider_example_app/provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NumberListProvider>(
          create: (context) => NumberListProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        home: const FirstPage(),
      ),
    );
  }
}
