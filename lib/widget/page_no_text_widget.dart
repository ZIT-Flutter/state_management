import 'package:flutter/material.dart';

class PageNoTextWidget extends StatelessWidget {
  final int pageNo;
  const PageNoTextWidget({super.key, required this.pageNo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'Page $pageNo',
        style: const TextStyle(
            color: Colors.indigo, fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}
