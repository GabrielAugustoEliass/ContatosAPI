import 'package:flutter/material.dart';

class ShowAppBarWidget extends StatefulWidget {
  const ShowAppBarWidget({super.key});

  @override
  State<ShowAppBarWidget> createState() => _ShowAppBarWidgetState();
}

class _ShowAppBarWidgetState extends State<ShowAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Icon(Icons.person),
        SizedBox(width: 15),
      ],
      backgroundColor: Colors.green[900],
      title: const Text('Contatos'),
    );
  }
}
