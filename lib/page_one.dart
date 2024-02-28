import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/provider_model.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NumberText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const IncreaseButton(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Go to Page 2'))
          ],
        ),
      ),
    );
  }
}

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

class NumberText extends StatelessWidget {
  const NumberText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NumberProvider>(context);
    return Text('${provider.number}');
  }
}
