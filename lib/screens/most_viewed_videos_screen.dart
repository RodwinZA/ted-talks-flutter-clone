import 'package:flutter/material.dart';
import 'package:ted_talks_clone/components/talk_detail_card.dart';

class MostViewedVideosScreen extends StatefulWidget {
  static const String id = 'most_viewed';

  @override
  _MostViewedVideosScreenState createState() => _MostViewedVideosScreenState();
}

class _MostViewedVideosScreenState extends State<MostViewedVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          children: [
            TalkDetailCard(
              cardImageLink:
                  'https://s3.amazonaws.com/talkstar-photos/uploads/936f2bb4-ce2a-4bf9-8168-07e5f9970f4f/RobCooke_2020S-embed.jpg',
              speaker: 'Rob Cooke',
              talkTitle: 'The cost of work stress -- and how to reduce it',
            ),
            TalkDetailCard(
              speaker: 'David Brennan',
              talkTitle: 'Can light stop the coronavirus?',
              cardImageLink:
                  'https://s3.amazonaws.com/talkstar-photos/uploads/9b1f2476-27f3-4cb9-bf60-b4ce23162f99/DavidBrenner_2020-embed.jpg',
            ),
            TalkDetailCard(
              speaker: 'Debbie Millman',
              talkTitle: 'Love letters to what we hold dear',
              cardImageLink:
                  'https://s3.amazonaws.com/talkstar-photos/uploads/ed7d7d48-4864-4f9c-97bb-1552f44ad45b/DebbieMillman_2020-embed.jpg',
            ),
            TalkDetailCard(
              cardImageLink:
                  'https://s3.amazonaws.com/talkstar-photos/uploads/36bdc0e8-c3d9-47db-96c0-3b159405285d/EthanHawke_2020S-embed.jpg',
              speaker: 'Ethan Hawke',
              talkTitle: 'Give yourself permission to be creative',
            ),
            TalkDetailCard(
              cardImageLink:
                  'https://s3.amazonaws.com/talkstar-photos/uploads/43cf1b5b-a587-4d82-b8c3-b2a8766436a4/YannLeCun_2020S-embed.jpg',
              speaker: 'Yann LeCun',
              talkTitle: 'Deep learning, neural networks and the future of AI',
            ),
            TalkDetailCard(
              cardImageLink:
                  'https://s3.amazonaws.com/talkstar-photos/uploads/e1b90117-ccb8-4292-abaa-1f6b894a6af8/EricYuan_2020S-embed.jpg',
              speaker: 'Eric Yuan',
              talkTitle: 'How to connect while apart',
            ),
          ],
        ),
      ),
    );
  }
}
