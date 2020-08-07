import 'package:flutter/material.dart';

class TalkDetailCard extends StatelessWidget {
  TalkDetailCard(
      {@required this.cardImageLink,
      @required this.speaker,
      @required this.talkTitle});

  final String cardImageLink;
  final String speaker;
  final String talkTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                  cardImageLink,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              subtitle: Text(speaker, style: TextStyle(color: Colors.white)),
              title: Text(talkTitle,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.more_vert, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
