import 'package:filmereview/app/modules/home/model/home_model.dart';
import 'package:filmereview/app/modules/home/repositories/home_repository_interface.dart';

class HomeRepository implements IHomeRepository {
  var listaFilmes = [
    HomeModel(
      titulo: 'Vingadores: Ultimato',
      url:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
    HomeModel(
      titulo: 'A Cabana',
      url:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
    HomeModel(
      titulo: 'Star wars: O império Contra Ataca',
      url:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
    HomeModel(
      titulo: 'Marley e Eu',
      url:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
    HomeModel(
      titulo: 'Uma Noite no Museu 3',
      url:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
  ];
  @override
  Future<List<HomeModel>> getFilmes() async {
    return Future.value(listaFilmes);
  }
}
