class ContatoModel {
  String username;

  ContatoModel({required this.username});

  factory ContatoModel.fromJson(Map<String, dynamic> map) {
    return ContatoModel(
      username: map['username'],
    );
  }
}
