import 'package:nasa_app/src/data/models/image_model.dart';
import 'package:nasa_app/src/domain/data/repositories/inasa_repository.dart';
import 'package:nasa_app/src/domain/entities/image.dart';
import 'package:nasa_app/src/domain/errors/nasa_exception.dart';

import '../datasources/inasa_datasource.dart';

class NasaRepository implements INasaRepository {
  final INasaDatasource datasource;

  NasaRepository(this.datasource);

  @override
  Future<List<ImageEntity>> getImages() async {
    try {
      List<Map<String, dynamic>> response = await datasource.getPhotos();
      List<ImageEntity> images = response.map(ImagemModel.fromMap).toList();

      return images;
    } catch (e) {
      throw NasaException("Erro ao buscar as imagens");
    }
  }
}
