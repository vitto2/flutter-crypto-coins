import 'package:flutter/material.dart';

import '../../../controller/moedas_page_controller.dart';

class MyFActionBottom extends StatelessWidget {
  MyFActionBottom({super.key});

  final CoinsController _controller = CoinsController();
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(Icons.star_rate_rounded),
      backgroundColor: Colors.deepPurpleAccent,
      label: const Text(
        "Favoritar",
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      onPressed: () {
        if (_controller.selectedItem.isEmpty) {
          return;
        } else {}
      },
    );
  }
}
