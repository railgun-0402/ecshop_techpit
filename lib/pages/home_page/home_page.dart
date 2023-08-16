import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Techpit Sports'),
        actions: [
          IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                print('アイコン押下');
              },
          ),
        ],
      ),
      body: const HomeHeader(),
    );
  }
}
