import 'package:flutter/material.dart';

class PostInfo extends StatelessWidget {
  const PostInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "1.463 curtidas",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 6),
                  child: const Text(
                    "luigi",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const  Text(
                  "👟 Fugindo do castelo do Bowser",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Text("Ver todos os 73 comentários", style: TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}
