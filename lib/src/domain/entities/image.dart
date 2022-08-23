// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:nasa_app/src/domain/enums/media_type_enum.dart';

class ImageEntity {
  final String date;
  final String explanation;
  final String imageHdUrl;
  final String fileUrl;
  final String title;
  final String copyright;
  final MediaTypeEnum mediaType;

  ImageEntity({
    required this.date,
    required this.explanation,
    required this.imageHdUrl,
    required this.fileUrl,
    required this.title,
    required this.copyright,
    required this.mediaType,
  });
}
