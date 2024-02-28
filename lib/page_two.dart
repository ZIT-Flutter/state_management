import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final int number;
  const PageTwo({super.key, required this.number});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('${widget.number}'),
          ElevatedButton(onPressed: () {}, child: const Text('Go to Page 3'))
        ],
      ),
    );
  }
}
