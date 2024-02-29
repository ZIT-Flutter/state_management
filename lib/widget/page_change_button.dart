import 'package:flutter/material.dart';

class PageChangeButton extends StatelessWidget {
  final String pageNo;
  final Widget page;

  const PageChangeButton({super.key, required this.pageNo, required this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      width: double.maxFinite,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          child: Text('Go to Page $pageNo')),
    );
  }
}
