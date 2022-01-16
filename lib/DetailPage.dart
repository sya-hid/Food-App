import 'dart:math';

import 'package:delicious_food/Models/Product.dart';
import 'package:delicious_food/size_config.dart';
import 'package:delicious_food/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  const DetailPage({Key key, @required this.product}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int currentPage = 0;
  int jumlah = 1;
  double total = 0;
  @override
  Widget build(BuildContext context) {
    total = jumlah * widget.product.price;
    AppBar buildAppBar() {
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: colorHitam,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_sharp),
            color: colorHitam,
            onPressed: () {},
          ),
        ],
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) => Image.asset(
                            'assets/image/png/' + widget.product.image,
                            height: 260,
                            width: 260,
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 10,
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => buildDot(index: index),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.subTitle,
                            style: textHitam.copyWith(
                                fontSize: 12, fontWeight: bold),
                          ),
                          Text(widget.product.title,
                              style: textHitam.copyWith(
                                  fontSize: 18, fontWeight: bold)),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          IconButton(
                              iconSize: 14,
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                setState(() {
                                  jumlah = max(1, jumlah - 1);
                                  total =
                                      jumlah * widget.product.price.toDouble();
                                });
                              }),
                          Text(
                            jumlah.toString(),
                            style: textHitam.copyWith(fontSize: 14),
                          ),
                          IconButton(
                              iconSize: 14,
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {
                                setState(() {
                                  jumlah = min(9, jumlah + 1);
                                  total =
                                      jumlah * widget.product.price.toDouble();
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.product.description,
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                    style: textHitam.copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: SizeConfig.screenWidth * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Time',
                          style: textHitam.copyWith(fontSize: 12),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 14,
                            ),
                            Text(
                              '25 mins',
                              style: textHitam.copyWith(
                                  fontSize: 12, fontWeight: bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: textHitam.copyWith(fontSize: 12),
                          ),
                          Text(
                            '\$${total}',
                            style: textHitam.copyWith(
                                fontSize: 14, fontWeight: bold),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.shopping_cart_outlined)
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 10,
      decoration: BoxDecoration(
          color: currentPage == index ? colorHitam : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
