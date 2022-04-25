import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  const BurgerPage({Key? key}) : super(key: key);
  static const tag = 'burger_page';

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burger'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'How much Burger do you want',
          style: TextStyle(
            fontSize: 24,
          ),
        )
      ),
    );
  }
}
