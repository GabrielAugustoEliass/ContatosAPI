import 'package:contatos_api/model/contato_model.dart';
import 'package:dio/dio.dart';

// A pasta service se comunica com servições externos
// Poderia ter métodos para buscar a lista de contatos,
// adicionar um novo contato, atualizar informações do contato, etc.

class ContatoService {
  final _dio = Dio();

  Future<List<ContatoModel>> fecthContatos() async {
    try {
      const urlApi = 'https://jsonplaceholder.typicode.com/users';
      final response = await _dio.get(urlApi);
      switch (response.statusCode) {
        case 200:
          return (response.data as List)
              .map((e) => ContatoModel.fromJson(e))
              .toList();
        default:
          throw Exception('Erro ao consumir dado das api');
      }
    } on Exception catch (_) {
      rethrow;
    }
  }
}
