import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      color: Colors.black26,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            StoryItem(
              imageUrl:
                  'https://portalpopline.com.br/wp-content/uploads/2023/04/super-mario-thumb.png',
            ),
            StoryItem(
              imageUrl:
                  'https://sm.ign.com/ign_br/news/l/luigi-isnt/luigi-isnt-dead-despite-smash-bros-video-evidence-to-the-con_4rh6.jpg',
              isLive: true,
            ),
            StoryItem(
              imageUrl:
                  'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/4f99da7b-8e33-4b52-7405-07e966e88b00/width=450/00337-3356758693.jpeg',
            ),
            StoryItem(
              imageUrl:
                  'https://static.wikia.nocookie.net/super-mario-br/images/c/c9/Toad.png/revision/latest?cb=20150812214810&path-prefix=pt-br',
            ),
            StoryItem(
              imageUrl:
                  'https://mario.wiki.gallery/images/thumb/8/84/MPS_Donkey_Kong_Artwork.png/800px-MPS_Donkey_Kong_Artwork.png',
            ),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final bool? isLive;

  const StoryItem({super.key, required this.imageUrl, this.isLive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Stack(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color(0xff1f005c),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),
              ]),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          if (isLive == true) ...[
            SizedBox(
              height: 80,
              width: 80,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff870160),
                        Color(0xffca485c),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(2),
                  child: const Text(
                    'AO VIVO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ],
      ),
    );
  }
}
