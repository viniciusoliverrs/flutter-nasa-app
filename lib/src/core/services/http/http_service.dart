import 'dart:convert';

import 'package:http/http.dart';
import 'package:nasa_app/src/core/services/http/http_exception.dart';

import 'custom_response.dart';
import 'ihttp_service.dart';

class HttpService implements IHttpService<CustomResponse> {
  final Client http;

  HttpService(this.http);

  @override
  Future<CustomResponse> get(
      {required String baseUrl, required String endpoint}) async {
    try {
      var url = Uri.parse("$baseUrl/$endpoint");
      Response response = await http.get(url);
      List<dynamic> data = json.decode(response.body);
      return CustomResponse(data);
    } catch (e) {
      throw HttpException(e.toString());
    }
  }
}
