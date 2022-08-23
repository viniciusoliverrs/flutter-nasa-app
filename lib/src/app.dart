import 'package:flutter/material.dart';
import 'package:nasa_app/src/core/config/app_providers.dart';
import 'package:provider/provider.dart';

import 'ui/view/gallery/gallery_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GalleryView(),
      ),
    );
  }
}
