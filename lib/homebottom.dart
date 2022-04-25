import 'package:flutter/material.dart';

class HomeBottom extends StatefulWidget {
  const HomeBottom({Key? key}) : super(key: key);

  @override
  State<HomeBottom> createState() => _HomeBottomState();
}

class _HomeBottomState extends State<HomeBottom> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed:(){

            },
            icon: const Icon(
              Icons.add_alert,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          const Spacer(),
          IconButton(
            onPressed:(){

            },
            icon: const Icon(
              Icons.turned_in,
              color: Colors.white,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
