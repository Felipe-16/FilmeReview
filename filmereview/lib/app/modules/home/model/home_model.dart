class HomeModel {
  final String titulo;
  final String imagem;
  final String? sinopse;
  final String? direcao;

  HomeModel(
      {required this.titulo, required this.imagem, this.sinopse, this.direcao});

  factory HomeModel.newInstance() {
    return HomeModel(titulo: '', imagem: '', sinopse: '', direcao: '');
  }
}
