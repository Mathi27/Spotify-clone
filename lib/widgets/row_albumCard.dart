import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RowAlbumCard extends StatelessWidget {
  const RowAlbumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // width: ,
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: AssetImage("assets/top50.jpg"),
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 8,
            ),
            Text("Top 50 - Global")
          ],
        ),
      ),
    );
  }
}
