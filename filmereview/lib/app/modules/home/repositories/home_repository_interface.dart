import 'package:filmereview/app/modules/home/model/home_model.dart';

abstract class IHomeRepository {
  Future<List<HomeModel>> getFilmes();
}
