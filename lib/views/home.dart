import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/SongCard.dart';
import '../widgets/album_card.dart';
import '../widgets/row_albumCard.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          /// This Container takes only 40% of screen size
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.green.withOpacity(0.5),
                  Colors.lightGreen.withOpacity(0.1),
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
          ),

          /// Scrolling view
          SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Played",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.history),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.settings),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(20),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: const [
                        SizedBox(
                          height: 60,
                        ),
                        AlbumCard(
                          label: "Best Mode",
                          image: AssetImage("assets/album7.jpg"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumCard(
                          label: "Motivational Mix",
                          image: AssetImage("assets/album2.jpg"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumCard(
                          label: "TOp 50 Global",
                          image: AssetImage("assets/top50.jpg"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumCard(
                          label: "Power Gaming",
                          image: AssetImage("assets/album1.jpg"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumCard(
                          label: "Gym Mode",
                          image: AssetImage("assets/album3.jpg"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        AlbumCard(
                          label: "Romantic ",
                          image: AssetImage("assets/album9.jpg"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Good evening",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RowAlbumCard(),
                            SizedBox(
                              width: 16,
                            ),
                            RowAlbumCard(),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RowAlbumCard(),
                            SizedBox(
                              width: 16,
                            ),
                            RowAlbumCard(),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RowAlbumCard(),
                            SizedBox(
                              width: 16,
                            ),
                            RowAlbumCard(),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Based On Your Recent listening ",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              SongCard(),
                              SizedBox(
                                width: 15,
                              ),
                              SongCard(),
                              SizedBox(
                                width: 15,
                              ),
                              SongCard(),
                              SizedBox(
                                width: 15,
                              ),
                              SongCard(),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
