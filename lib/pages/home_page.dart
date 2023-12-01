import 'package:contatos_api/controller/contato_controller.dart';
import 'package:contatos_api/widgets/show_app_bar.widget.dart';
import 'package:flutter/material.dart';
import '../widgets/card_contatos_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ContatoController _contatoController = ContatoController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _contatoController.getContatos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(23, 55),
        child: ShowAppBarWidget(),
      ),
      body: CardContatosWidget(),
    );
  }
}
