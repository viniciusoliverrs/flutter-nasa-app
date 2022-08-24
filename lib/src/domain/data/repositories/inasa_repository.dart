import '../../entities/image_entity.dart';

abstract class INasaRepository {
  Future<List<ImageEntity>> getImages();
}