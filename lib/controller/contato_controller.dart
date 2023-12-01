import 'package:contatos_api/model/contato_model.dart';
import 'package:contatos_api/service/contato_service.dart';

// Gerenciaria a lógica de negócios relacionada à manipulação e exibição de contatos.
class ContatoController {
  Future<List<ContatoModel>> getContatos() async {
    return ContatoService().fecthContatos();
  }
}
