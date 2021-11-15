// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$listaFilmesAtom = Atom(name: '_HomeControllerBase.listaFilmes');

  @override
  List<HomeModel> get listaFilmes {
    _$listaFilmesAtom.reportRead();
    return super.listaFilmes;
  }

  @override
  set listaFilmes(List<HomeModel> value) {
    _$listaFilmesAtom.reportWrite(value, super.listaFilmes, () {
      super.listaFilmes = value;
    });
  }

  final _$getFilmesAsyncAction = AsyncAction('_HomeControllerBase.getFilmes');

  @override
  Future<void> getFilmes() {
    return _$getFilmesAsyncAction.run(() => super.getFilmes());
  }

  @override
  String toString() {
    return '''
listaFilmes: ${listaFilmes}
    ''';
  }
}
