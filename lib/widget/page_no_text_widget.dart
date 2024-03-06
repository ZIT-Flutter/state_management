import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/provider_model.dart';

class PageNoTextWidget extends StatelessWidget {
  final int pageNo;
  const PageNoTextWidget({super.key, required this.pageNo});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NumberProvider>(context);

    var fontsize = getFontsize(provider.number);
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Slider(
            value: (provider.number).toDouble(),
            min: 0,
            max: 100,
            divisions: 100,
            label: fontsize.toString(),
            onChanged: (double value) {
              provider.updateNumber(value.toInt());
            },
          ),
          Text(
            'Page $pageNo',
            style: TextStyle(
                color: Colors.indigo,
                fontSize:
                    // provider.number <= 20 ? provider.number + 19.toDouble() : 40,
                    fontsize,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  double getFontsize(int providerValue) {
    double initialSize = 20;

    double increaseSize = initialSize / 100;

    double finalFontSize = initialSize + (providerValue * increaseSize);

    return finalFontSize;
  }
}
