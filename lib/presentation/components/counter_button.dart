import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final Icon icon;
  final String? tooltip;
  final VoidCallback? onPressed;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const CounterButton({
    super.key,
    required this.icon,
    this.tooltip,
    this.onPressed,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      tooltip: tooltip,
      child: icon,
    );
  }

  //#endregion
}
