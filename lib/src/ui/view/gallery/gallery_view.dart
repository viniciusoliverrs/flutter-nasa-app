import 'package:flutter/material.dart';
import 'package:nasa_app/src/core/providers/nasa_provider.dart';
import 'package:nasa_app/src/ui/view/gallery/components/gallery_list.dart';
import 'package:provider/provider.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Consumer<NasaProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              Expanded(child: GalleryList(images: provider.images)),
            ],
          );
        },
      ),
    );
  }
}
