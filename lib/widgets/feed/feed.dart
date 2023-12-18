import 'package:flutter/material.dart';
import 'package:flutter_instagram_challenge/widgets/post_actions/post_actions.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Header(),
        FeedData(),
        PostActions()
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: const [
                SizedBox(
                  height: 48,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://sm.ign.com/ign_br/news/l/luigi-isnt/luigi-isnt-dead-despite-smash-bros-video-evidence-to-the-con_4rh6.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'luigi',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.more_horiz,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class FeedData extends StatelessWidget {
  const FeedData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 370,
      child: const Image(
        image: NetworkImage(
            'https://i0.wp.com/www.arrobanerd.com.br/wp-content/uploads/2023/02/super-mario-bros-luigi.jpg?fit=800%2C445&ssl=1'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class FooterAction extends StatelessWidget {
  const FooterAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
