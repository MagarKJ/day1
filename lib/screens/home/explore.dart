import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Explore extends StatelessWidget {
  final List<String> textList = [
    //listview.builder
    'All',
    'Gaming',
    'Clash of Clans',
    'Clash Royale',
    'Reaction',
    'PUBG',
    'All',
    'Gaming',
    'Clash of Clans',
    'Clash Royale',
    'Reaction',
    'PUBG',
  ];

  Explore({super.key});
  @override
  Widget build(BuildContext context) {
    /* var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
*/
    return Container(
      color: Colors.white,
      width: Get.width,
      height: 45,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(5)),
              height: 35,
              width: 50,
              child: const Icon(
                Icons.explore_outlined,
                size: 25,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ListView.builder(
                shrinkWrap:
                    true, // refers to a property that controls whether a widget should be constrained to the minimum size necessary or allowed to expand to fill its parent.
                scrollDirection: Axis.horizontal,
                itemCount: textList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4.0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(10),
                        // shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Text(
                          textList[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
