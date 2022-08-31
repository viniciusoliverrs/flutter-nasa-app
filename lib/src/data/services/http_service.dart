import 'dart:convert';

import 'package:http/http.dart';
import 'package:nasa_app/src/domain/errors/http_exception.dart';

import '../../domain/data/services/ihttp_service.dart';
import '../models/response_model.dart';

class HttpService implements IHttpService<ResponseModel> {
  final Client http;

  HttpService(this.http);

  @override
  Future<ResponseModel> get(
      {required String baseUrl, required String endpoint}) async {
    try {
      var url = Uri.parse("$baseUrl/$endpoint");
      Response response = await http.get(url);
      List<dynamic> data = json.decode(response.body);
      return ResponseModel(data);
    } catch (e) {
      throw HttpException(e.toString());
    }
  }
}
