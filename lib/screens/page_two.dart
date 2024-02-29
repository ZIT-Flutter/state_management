import 'package:flutter/material.dart';
import 'package:provider_app/screens/page_three.dart';
import 'package:provider_app/widget/page_change_button.dart';

import '../widget/page_no_text_widget.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageNoTextWidget(pageNo: 2),
            PageChangeButton(pageNo: '3', page: PageThree())
          ],
        ),
      ),
    );
  }
}
