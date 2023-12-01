import 'package:flutter/material.dart';
import '../controller/contato_controller.dart';
import '../model/contato_model.dart';

class CardContatosWidget extends StatefulWidget {
  const CardContatosWidget({super.key});

  @override
  State<CardContatosWidget> createState() => _CardContatosWidgetState();
}

class _CardContatosWidgetState extends State<CardContatosWidget> {
  final ContatoController _contatoController = ContatoController();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ContatoModel>>(
      future: _contatoController.getContatos(),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snap.hasError) {
          return const Center(
            child: Text('Erro ao consumir api'),
          );
        } else {
          final user = snap.data!;
          return ListView.builder(
            itemCount: user.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  elevation: 2,
                  child: ListTile(
                    title: Text(user[index].username),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
