import 'package:flutter/material.dart';

import 'collaps_page.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage1(),
    );
  }
}

/*
class ImageGrid extends StatelessWidget {
  final List<String> imageUrls = [
    'https://mastertsmlille.files.wordpress.com/2022/04/image-1.jpg',
    'https://pbs.twimg.com/profile_images/1705186839584194560/9YD29Lmg_400x400.jpg',
    'https://image.jeuxvideo.com/medias/168838/1688375442-6003-jaquette-avant.jpg',
    'https://images.alphacoders.com/131/1311951.jpg',
    'https://images7.alphacoders.com/133/thumbbig-1331905.webp',
    'https://mfiles.alphacoders.com/996/thumb-1920-996752.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300, // Largeur maximale de chaque élément de la grille
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return GridTile(
          child: Image.network(imageUrls[index], fit: BoxFit.cover),
        );
      },
    );
  }
}
*/