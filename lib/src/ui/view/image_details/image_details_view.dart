import 'package:flutter/material.dart';
import 'package:nasa_app/src/domain/entities/image_entity.dart';
import '../../common_widgets/common_image.dart';

class ImageDetailsView extends StatelessWidget {
  final ImageEntity image;
  const ImageDetailsView({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CommonImage(imageUrl: image.imageHdUrl),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 38,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    image.explanation,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
