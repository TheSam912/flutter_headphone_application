import 'package:flutter/material.dart';
import 'package:flutter_evet_app/detailPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        myCart(context, "1", "Beats Studio3 Wireless ®", "\$349.95",
            "assets/images/beats.png"),
        myCart(context, "2", "Beats Studio3 Wireless ®", "\$349.95",
            "assets/images/beats1.png"),
        myCart(context, "3", "Beats Studio3 Wireless ®", "\$349.95",
            "assets/images/beats2.png"),
        myCart(context, "4", "Beats Studio3 Wireless ®", "\$349.95",
            "assets/images/beats3.png"),
        myCart(context, "5", "Beats Studio3 Wireless ®", "\$349.95",
            "assets/images/beats4.png")
      ],
    )));
  }
}

Widget myCart(BuildContext context, String tag, String title, String price,
    String image) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return DetailPage(tag: tag, image: image, title: title, price: price);
      }));
    },
    child: Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(12),
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.only(left: 65),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orange.shade400, Colors.deepOrange.shade600],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(5, 5))
              ]),
          child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade900),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      price,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Hero(
            tag: tag,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.contain,
              width: 150,
              height: 150,
            ),
          ),
        ),
        Positioned(
            bottom: 12,
            right: 15,
            child: Container(
                padding:
                    const EdgeInsets.only(left: 3, right: 3, top: 3, bottom: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: const Icon(
                  Icons.chevron_right_rounded,
                  size: 20,
                ))),
        const Positioned(
            top: 15,
            right: 15,
            child: Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
            ))
      ]),
    ),
  );
}
