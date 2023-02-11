import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const AlbumCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 120,
          height: 120,
        ),
        SizedBox(
          height: 10,
        ),
        Text(label),
      ],
    );
  }
}
