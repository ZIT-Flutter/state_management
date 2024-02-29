import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/provider_model.dart';

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
