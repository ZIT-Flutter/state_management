import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/provider_model.dart';
import 'package:provider_app/screens/page_two.dart';
import 'package:provider_app/widget/page_no_text_widget.dart';

import '../../widget/page_change_button.dart';
import 'component/decrease_button.dart';
import 'component/increase_button.dart';
import '../../widget/number_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageNoTextWidget(pageNo: 1),
            NumberText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IncreaseButton(),
                DecreaseButton(),
              ],
            ),
            PageChangeButton(
              pageNo: '2',
              page: PageTwo(),
            )
          ],
        ),
      ),
    );
  }
}
