import 'package:flutter/material.dart';

class ChannelName extends StatefulWidget {
  final String channel;
  const ChannelName({super.key, required this.channel});

  @override
  State<ChannelName> createState() => _ChannelIconState();
}

class _ChannelIconState extends State<ChannelName> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              const CircleAvatar(
                foregroundImage: AssetImage('Assets/Photos/thor.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.channel,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.black,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Subscribe',
                selectionColor: Colors.white,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
