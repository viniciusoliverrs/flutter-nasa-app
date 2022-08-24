import 'package:flutter/material.dart';

import '../../../../domain/entities/image_entity.dart';
import '../../../common_widgets/common_image.dart';
import '../../image_details/image_details_view.dart';

class GalleryItem extends StatelessWidget {
  final ImageEntity image;
  const GalleryItem({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ImageDetailsView(image: image)));
      },
      child: Column(
        children: [
          if (image.mediaType.name == 'image')
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CommonImage(
                  imageUrl: image.imageHdUrl,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
