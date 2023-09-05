import 'package:flutter/material.dart';
import 'package:flutter_instagram_challenge/widgets/custom_app_bar/app_bar.dart';
import 'package:flutter_instagram_challenge/widgets/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:flutter_instagram_challenge/widgets/stories/stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: const [
          Stories(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
