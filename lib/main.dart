import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Wisdom(),
  ));
}

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  final List quotes = [
    "Beware of monotony, it’s the mother of all the deadly sins.",
    "Keep your fears to yourself, but share your courage with others.",
    "The greatest leader is not necessarily the one who does the greatest things. He is the one that gets people to do the greatest things.",
    "I can’t change the direction of the wind, but I can adjust my sails to always reach my destination.",
    "Life is 10% what happens to me and 90% of how I react to it.",
    "I cannot trust a man to control others who cannot control himself.",
    "Perfection is not attainable, but if we chase perfection we can catch excellence",
    "You get in life what you have the courage to ask for.",
    "In the end, it is important to remember that we cannot become what we need to be by remaining what we are.",
    "Believe you can and you’re halfway there.",
    "Too many of us are not living our dreams because we are living our fears."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text("Quotes App", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.amberAccent.shade700,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(14)),
            margin: EdgeInsets.only(bottom: 18,top: 18),
            child: Center(
              child: Text(quotes[_index % quotes.length],
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            ),
          ),
          Divider(
            thickness: 1.8,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: TextButton.icon(
              onPressed: _showQuotes,
              icon: Icon(
                Icons.auto_awesome,
                color: Colors.white,
              ),
              label: Text(
                "Inspire Me!",
                style: TextStyle(color: Colors.white),
              ),
              style:
                  TextButton.styleFrom(backgroundColor: Colors.green.shade500),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }

  void _showQuotes() {
    setState(() {
      //increment index by 1.
      _index += 1;
    });
  }
}
