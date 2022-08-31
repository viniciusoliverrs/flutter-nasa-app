// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonImage extends StatelessWidget {
  final String imageUrl;
  final int height;
  final int width;
  const CommonImage({
    Key? key,
    required this.imageUrl,
    this.height = 200,
    this.width = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
        imageUrl,
        fit: BoxFit.cover,
        cacheHeight: height,
        cacheWidth: width,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return const Center(child: CircularProgressIndicator());
        },
        errorBuilder: (context, error, stackTrace) {
          return const Center(child: Text('Error'));
        },
    );
  }
}
