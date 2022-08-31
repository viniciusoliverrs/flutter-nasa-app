// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nasa_app/src/domain/data/repositories/inasa_repository.dart';
import 'package:nasa_app/src/domain/entities/image_entity.dart';

class NasaProvider with ChangeNotifier {
  final INasaRepository repository;
  List<ImageEntity> images = [];
  bool isLoading = false;
  NasaProvider(this.repository) {
    getNasaData();
  }

  getNasaData() async {
    isLoading = true;
    images = await repository.getImages();
    isLoading = false;
    notifyListeners();
  }
}
