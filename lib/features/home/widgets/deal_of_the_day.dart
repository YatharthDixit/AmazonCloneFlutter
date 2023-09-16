import 'package:flutter/material.dart';

class DealOfTheDay extends StatefulWidget {
  const DealOfTheDay({super.key});

  @override
  State<DealOfTheDay> createState() => _DealOfTheDayState();
}

class _DealOfTheDayState extends State<DealOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10, top: 15),
          child: const Text("Deal of the day", style: TextStyle(fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://m.media-amazon.com/images/I/61Ph34V0YAL._SL1500_.jpg',
            height: 235,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 15,
          ),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$999.0',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
            child: const Text(
              "Macbook Pro M1 512GB 8GB",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.network(
                'https://m.media-amazon.com/images/I/71dH6omLLzL._SL1500_.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://m.media-amazon.com/images/I/71dH6omLLzL._SL1500_.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://m.media-amazon.com/images/I/71dH6omLLzL._SL1500_.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://m.media-amazon.com/images/I/916BSI-wrhL._SL1500_.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
            alignment: Alignment.topLeft,
            child: Text(
              "See all deals",
              style: TextStyle(color: Colors.cyan.shade800),
            ))
      ],
    );
  }
}
