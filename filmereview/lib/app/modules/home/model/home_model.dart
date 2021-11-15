class HomeModel {
  final String titulo;
  final String url;

  HomeModel({required this.titulo, required this.url});

  factory HomeModel.newInstance() {
    return HomeModel(titulo: '', url: '');
  }
}
