import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/provider_model.dart';

class DecreaseButton extends StatelessWidget {
  const DecreaseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    NumberProvider provider = Provider.of<NumberProvider>(context);
    return IconButton(
        onPressed: () {
          provider.decreaseNumber();
        },
        icon: const Icon(Icons.remove));
  }
}
