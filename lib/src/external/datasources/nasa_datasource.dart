import 'package:nasa_app/src/core/constants/api.dart';
import 'package:nasa_app/src/data/datasources/inasa_datasource.dart';

import '../../data/models/response_model.dart';
import '../../domain/data/services/ihttp_service.dart';

class NasaDatasource implements INasaDatasource {
  final IHttpService service;
  NasaDatasource(this.service);
  @override
  Future<List<Map<String, dynamic>>> getPhotos() async {
    ResponseModel response = await service.get(
      baseUrl: Api.baseUrl,
      endpoint: "apod?api_key=${Api.apiKey}&count=50",
    );
    List<Map<String, dynamic>> map = (response.data as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList();
    return map;
  }
}
