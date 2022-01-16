import 'package:delicious_food/Models/Product.dart';
import 'package:delicious_food/size_config.dart';
import 'package:delicious_food/theme.dart';
import 'package:flutter/material.dart';

class Product_Ver extends StatelessWidget {
  final Product product;
  const Product_Ver({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      height: defaultSize * 35,
      width: defaultSize * 15,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(bottom: 0, child: Icon(Icons.add_circle)),
          Container(
            height: defaultSize * 27,
            width: defaultSize * 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: colorHitam.withOpacity(0.2),
            ),
          ),
          Positioned(
            top: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: defaultSize * 15,
                  width: defaultSize * 15,
                  child: Image.asset('assets/image/png/' + product.image),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      product.title,
                      textAlign: TextAlign.center,
                      style: textHitam.copyWith(fontSize: 14, fontWeight: bold),
                    ),
                    Text(product.subTitle,
                        style: textHitam.copyWith(fontSize: 10)),
                    Text('\$${product.price}',
                        textAlign: TextAlign.center,
                        style:
                            textHitam.copyWith(fontSize: 12, fontWeight: bold)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
