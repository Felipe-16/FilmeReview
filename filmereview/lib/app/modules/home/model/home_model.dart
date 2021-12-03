class HomeModel {
  final String titulo;
  final String imagem;
  final String? sinopse;
  final String? direcao;
  final String? roteiro;
  final String? elenco;
  final double? nota;

  HomeModel(
      {required this.titulo, required this.imagem, this.sinopse, this.direcao, this.roteiro, this.elenco, this.nota});

  factory HomeModel.newInstance() {
    return HomeModel(titulo: '', imagem: '', sinopse: '', direcao: '', roteiro: '', elenco: '');
  }
}
