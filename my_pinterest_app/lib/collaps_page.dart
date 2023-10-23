import 'package:flutter/material.dart';

import 'image_detail.dart';

class CollapsingAppbarPage extends StatelessWidget {
  const CollapsingAppbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CollapsingAppbarWithImagesPage(), // Chargez la nouvelle page ici
    );
  }
}

class ImageInfo {
  final String imageUrl;
  final String title;
  final String date;
  final String size;

  ImageInfo({
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.size,
  });
}

class CollapsingAppbarWithImagesPage extends StatelessWidget {
  CollapsingAppbarWithImagesPage({Key? key}) : super(key: key);

  // Liste des liens d'images que vous souhaitez afficher
  final List<ImageInfo> imageInfoList = [
    ImageInfo(
      imageUrl: 'https://mastertsmlille.files.wordpress.com/2022/04/image-1.jpg',
      title: 'Les meilleurs',
      date: '2023-10-24',
      size: '800x600',
    ),
    ImageInfo(
      imageUrl: 'https://pbs.twimg.com/profile_images/1705186839584194560/9YD29Lmg_400x400.jpg',
      title: 'Satoru Gojo',
      date: '2023-10-24',
      size: '800x600',
    ),
    ImageInfo(
      imageUrl: 'https://image.jeuxvideo.com/medias/168838/1688375442-6003-jaquette-avant.jpg',
      title: 'Yji Itadori',
      date: '2023-10-24',
      size: '800x600',
    ),
    ImageInfo(
      imageUrl: 'https://images.alphacoders.com/131/1311951.jpg',
      title: 'AI Oshinoko',
      date: '2023-10-24',
      size: '800x600',
    ),
    ImageInfo(
      imageUrl: 'https://images7.alphacoders.com/133/thumbbig-1331905.webp',
      title: 'Satoru Gojo',
      date: '2023-10-24',
      size: '800x600',
    ),
    ImageInfo(
      imageUrl: 'https://mfiles.alphacoders.com/996/thumb-1920-996752.jpg',
      title: 'Muishiro Tokito',
      date: '2023-10-24',
      size: '800x600',
    ),
    ImageInfo(
      imageUrl: 'https://images.alphacoders.com/133/thumbbig-1334857.webp',
      title: 'Satoru',
      date: '2023-10-24',
      size: '800x600',
    ),
    ImageInfo(
      imageUrl: 'https://images4.alphacoders.com/131/thumbbig-1314559.webp',
      title: 'Nezuko Chan',
      date: '2023-10-24',
      size: '800x600',
    ),

  ];

  /*final List<String> imageUrls = [
    'https://mastertsmlille.files.wordpress.com/2022/04/image-1.jpg',
    'https://pbs.twimg.com/profile_images/1705186839584194560/9YD29Lmg_400x400.jpg',
    'https://image.jeuxvideo.com/medias/168838/1688375442-6003-jaquette-avant.jpg',
    'https://images.alphacoders.com/131/1311951.jpg',
    'https://images7.alphacoders.com/133/thumbbig-1331905.webp',
    'https://mfiles.alphacoders.com/996/thumb-1920-996752.jpg',
    'https://mastertsmlille.files.wordpress.com/2022/04/image-1.jpg',
    'https://pbs.twimg.com/profile_images/1705186839584194560/9YD29Lmg_400x400.jpg',
    'https://image.jeuxvideo.com/medias/168838/1688375442-6003-jaquette-avant.jpg',
    'https://images.alphacoders.com/131/1311951.jpg',
    'https://images7.alphacoders.com/133/thumbbig-1331905.webp',
    'https://mfiles.alphacoders.com/996/thumb-1920-996752.jpg',
  ];*/

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              title: const Text(
                "Wallpaper Universe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              background: Image.network(
                'https://images4.alphacoders.com/133/thumbbig-1332281.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: imageInfoList.length,
        // Utilisez la longueur de la liste d'images
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              final imageInfo = imageInfoList[index];
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      ImageDetail(
                        imageUrl: imageInfo.imageUrl,
                        title: imageInfo.title,
                        date: imageInfo.date,
                        size: imageInfo.size,
                      ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageInfoList[index].imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
/*
void main() {
  runApp(MaterialApp(home: CollapsingAppbarPage()));
}*/
