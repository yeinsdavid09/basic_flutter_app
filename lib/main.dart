import 'package:flutter/material.dart';

//* Screens
import 'package:basic_flutter_app/presentation/screens/counter_screen.dart';

//* Main
void main() {
  runApp(const MyApp());
}

//* App
class MyApp extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const MyApp({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Book',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const CounterScreen(),
    );
  }

  //#endregion
}
