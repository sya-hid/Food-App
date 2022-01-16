import 'package:delicious_food/Models/Product.dart';
import 'package:delicious_food/theme.dart';
import 'package:flutter/material.dart';

class Product_Hor extends StatelessWidget {
  final Product product;

  const Product_Hor({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(alignment: Alignment.centerLeft, children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: colorHitam.withOpacity(0.1),
          ),
        ),
        Positioned(
            left: -50,
            child: Container(
                height: 130,
                child: Image.asset('assets/image/png/' + product.image))),
        Positioned(
          left: 80,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            height: 136,
            width: MediaQuery.of(context).size.width - 80,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      product.title,
                      style: textHitam.copyWith(fontSize: 16, fontWeight: bold),
                    ),
                    Text(product.subTitle),
                    Text('\$${product.price}',
                        style:
                            textHitam.copyWith(fontSize: 14, fontWeight: bold))
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.add_circle),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
