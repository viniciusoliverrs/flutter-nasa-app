import '../../entities/image.dart';

abstract class INasaRepository {
  Future<List<ImageEntity>> getImages();
}