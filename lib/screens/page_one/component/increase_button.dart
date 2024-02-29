import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/provider_model.dart';

class IncreaseButton extends StatelessWidget {
  const IncreaseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NumberProvider>(context);
    return IconButton(
        onPressed: () {
          provider.increaseNumber();
        },
        icon: const Icon(Icons.add));
  }
}
