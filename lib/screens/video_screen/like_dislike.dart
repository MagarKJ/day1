import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LikeDislike extends StatelessWidget {
  const LikeDislike({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Get.width,
      height: 35,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFF0F0F0),
                    borderRadius: BorderRadius.circular(15)),
                height: 35,
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        const Icon(Icons.thumb_up_alt);
                      },
                      icon: const Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 25,
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey[1000],
                      thickness: 1,
                      indent: 6,
                      endIndent: 6,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_down_alt_outlined,
                        size: 25,
                      ),
                      selectedIcon: const Icon(
                        Icons.thumb_up_alt,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(15)),
              height: 35,
              width: 86,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                    ),
                    Text('Share'),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(15)),
              height: 35,
              width: 110,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.download,
                    ),
                    Text('Download'),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(15)),
              height: 35,
              width: 88,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.cut_outlined,
                    ),
                    Text('Clip'),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(15)),
              height: 35,
              width: 88,
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                    ),
                    Text('Save'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
