import 'package:flutter/material.dart';
import 'package:provider_app/screens/page_one/page_one.dart';
import 'package:provider_app/widget/number_text.dart';
import 'package:provider_app/widget/page_change_button.dart';
import 'package:provider_app/widget/page_no_text_widget.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageNoTextWidget(pageNo: 3),
            NumberText(),
            PageChangeButton(pageNo: '1', page: PageOne())
          ],
        ),
      ),
    );
  }
}
