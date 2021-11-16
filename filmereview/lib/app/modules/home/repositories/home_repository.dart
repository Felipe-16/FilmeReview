import 'package:filmereview/app/modules/home/model/home_model.dart';
import 'package:filmereview/app/modules/home/repositories/home_repository_interface.dart';

class HomeRepository implements IHomeRepository {
  var listaFilmes = [
    HomeModel(
      titulo: 'Vingadores: Ultimato',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
      sinopse:
          'As consequências devastadoras dos atos de Thanos, que dizimaram metade das criaturas do universo e destruíram os Vingadores, leva os heróis remanescentes a tomarem uma atitude final na grande conclusão da sequência de vinte dois filmes da Marvel Studios.',
      direcao: 'Furlas',
    ),
    HomeModel(
      titulo: 'A Cabana',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
      direcao: 'Daniel Branquinho',
      sinopse:
          'As consequências devastadoras dos atos de Thanos, que dizimaram metade das criaturas do universo e destruíram os Vingadores, leva os heróis remanescentes a tomarem uma atitude final na grande conclusão da sequência de vinte dois filmes da Marvel Studios.',
    ),
    HomeModel(
      titulo: 'Star wars: O império Contra Ataca',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
      sinopse:
          'As consequências devastadoras dos atos de Thanos, que dizimaram metade das criaturas do universo e destruíram os Vingadores, leva os heróis remanescentes a tomarem uma atitude final na grande conclusão da sequência de vinte dois filmes da Marvel Studios.',
    ),
    HomeModel(
      titulo: 'Marley e Eu',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
      sinopse:
          'As consequências devastadoras dos atos de Thanos, que dizimaram metade das criaturas do universo e destruíram os Vingadores, leva os heróis remanescentes a tomarem uma atitude final na grande conclusão da sequência de vinte dois filmes da Marvel Studios.',
    ),
    HomeModel(
      titulo: 'Uma Noite no Museu 3',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
    HomeModel(
      titulo: 'Indiana Jones',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
    HomeModel(
      titulo: '007: A Revoada',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
    HomeModel(
      titulo: 'Gente Grande',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
    ),
  ];
  @override
  Future<List<HomeModel>> getFilmes() async {
    return Future.value(listaFilmes);
  }
}
