import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  const SongCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(
            image: AssetImage("assets/album6.jpg"),
            width: 140,
            height: 140,
          ),
          Text(
            "Bad Bunny, Drake , Justing Bieber , Taylor Swift,...",
            style: Theme.of(context).textTheme.caption,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
