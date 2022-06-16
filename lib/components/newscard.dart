import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.network(
                  "https://c.ndtvimg.com/2022-06/ap97596k_manish-tiwary-bloomberg_625x300_16_June_22.jpg",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          SizedBox(
            height: 160,
            width: 210,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Flexible(
                  child: Text(
                    "Amazon's India Business Chief On Why He Pulled The Plug On IPL - NDTV",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 2, bottom: 2),
                    child: Text(
                      'NDTV',
                      style: TextStyle(color: Colors.lime, fontSize: 10),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Flexible(
                  child: Text(
                    "Manish Tiwary had only been in his new job as head of Amazon.com Inc.'s India business a couple of months when he faced a weighty decision: How aggressively should the US e-commerce giant bid for media rights to the Indian Premier League?",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
