import 'package:nasa_app/src/domain/entities/image_entity.dart';
import 'package:nasa_app/src/domain/enums/media_type_enum.dart';
import 'package:nasa_app/src/domain/errors/nasa_exception.dart';

class ImagemModel {
  static ImageEntity fromMap(Map<String, dynamic> map) {
    try {
      return ImageEntity(
        title: map['title'] ?? "",
        copyright: map['copyright'] ?? "",
        date: map['date'] ?? "",
        explanation: map['explanation'] ?? "",
        imageHdUrl: map['hdurl'] ?? "",
        fileUrl: map['url'] ?? "",
        mediaType: MediaTypeEnum.values.firstWhere(
          (mediaType) => mediaType.toString() == map['media_type'],
          orElse: () => MediaTypeEnum.image,
        ),
      );
    } catch (e) {
      throw NasaException("Erro ao converter o map para o objeto");
    }
  }
}
