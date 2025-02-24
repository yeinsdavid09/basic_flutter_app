import 'package:flutter/material.dart';

//* Services
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//* Components
import 'package:basic_flutter_app/presentation/components/counter_button.dart';

class CounterScreen extends StatefulWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();

  //#endregion
}

class _CounterScreenState extends State<CounterScreen> {
  //#region --------------------------------- Variables ---------------------------------

  int clickCounter = 0;

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  void incrementCounter() {
    setState(() {
      clickCounter++;
    });
  }

  void decreaseCounter() {
    if (clickCounter > 0) {
      setState(() {
        clickCounter--;
      });
    }
  }

  void resetCounter() {
    setState(() {
      clickCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App', style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: resetCounter,
            tooltip: AppLocalizations.of(context)!.buttons_reset_tooltip,
            icon: const Icon(Icons.refresh_rounded, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.w400),
            ),
            Text(
              AppLocalizations.of(context)!.clicks(clickCounter),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CounterButton(
            onPressed: incrementCounter,
            tooltip: AppLocalizations.of(context)!.buttons_increment_tooltip,
            icon: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 10),
          CounterButton(
            onPressed: decreaseCounter,
            tooltip: AppLocalizations.of(context)!.buttons_decrement_tooltip,
            icon: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }

  //#endregion
}
