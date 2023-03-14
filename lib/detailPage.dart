import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  String tag;
  String image;
  String title;
  String price;
  DetailPage(
      {super.key,
      required this.tag,
      required this.image,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
          child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 56,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        return Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 35,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                        onPressed: () {
                          return Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.favorite_border_sharp,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                ],
              )),
          Hero(tag: tag, child: Image(image: AssetImage(image))),
          const SizedBox(
            height: 30,
          ),
          FadeInUp(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          FadeInUp(
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Text(
                price,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          FadeInUp(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 70, right: 70, top: 20),
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Text(
                "ADD TO CART",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.orange.shade600),
              ),
            ),
          )
        ],
      )),
    );
  }
}
