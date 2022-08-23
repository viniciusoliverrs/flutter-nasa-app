// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nasa_app/src/ui/view/gallery/components/gallery_item.dart';

import '../../../../domain/entities/image.dart';

class GalleryList extends StatelessWidget {
  final List<ImageEntity> images;
  const GalleryList({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) => GalleryItem(image: images[index]),
    );
  }
}
