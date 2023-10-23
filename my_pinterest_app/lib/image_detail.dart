import 'package:flutter/material.dart';

import 'login_page.dart';

class ImageDetail extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String size;

  ImageDetail({
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'image'),
      ),
      body: ListView(
        children: [
          Container(
            height: 300, // Ajustez la hauteur de l'image comme nécessaire
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Titre: $title',
                  style: TextStyle(fontSize: 25),
                ),
                Text('Date de publication: $date',
                style: TextStyle(fontSize: 25)),
                Text('Taille: $size',
                    style: TextStyle(fontSize: 25)),
              ],
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                //
              },
              child: Text('Télécharger'),
            )
          ),
        ],
      ),
    );
  }
}
