// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:nasa_app/src/domain/entities/image.dart';

import '../../common/common_image.dart';

class ImageDetailsView extends StatelessWidget {
  final ImageEntity image;
  const ImageDetailsView({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child: Stack(
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  image.explanation,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
