import 'package:flutter/material.dart';
import 'package:news/components/newscard.dart';

class NewsDetail extends StatefulWidget {
  const NewsDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsDetail> createState() => _NewsDetail();
}

class _NewsDetail extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Newsly"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.height * 3,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: Image.network(
                        "https://c.ndtvimg.com/2022-06/ap97596k_manish-tiwary-bloomberg_625x300_16_June_22.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Amazon's India Business Chief On Why He Pulled The Plug On IPL - NDTV",
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  color: Colors.lime,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.justify,

                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 2, bottom: 2),
                              child: Text(
                                'NDTV',
                                style:
                                    TextStyle(color: Colors.lime, fontSize: 14),

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
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),

                          Divider(
                            thickness: 1,
                            color: Colors.white,
                            endIndent: 30,
                            indent: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Manish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business.anish Manish Tiwary said those billions would be better spent on Amazon's e-commerce business. Manish Tiwary had only been in his new job as head of Amazon.com Inc.'s India business a couple of months whe… [+4214 chars]Tiwary said those billions would be better spent on Amazon's e-commerce business. Manish Tiwary had only been in his new job as head of Amazon.com Inc Manish Tiwary said those billions would be better spent on Amazon's e-commerce business. Manish Tiwary had only been in his new job as head of Amazon.com Inc.'s India business a couple of months whe… [+4214 chars]'s India business a couple of months whe… [+4214 chars]",
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.justify,

                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}