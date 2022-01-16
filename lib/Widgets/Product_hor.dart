import 'package:delicious_food/Models/Product.dart';
import 'package:delicious_food/size_config.dart';
import 'package:delicious_food/theme.dart';
import 'package:flutter/material.dart';

class ProductHor extends StatelessWidget {
  final Product product;
  final Function press;

  const ProductHor({
    Key key,
    @required this.product,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: defaultSize * 20,
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
              height: defaultSize * 15,
              width: defaultSize * 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(10, 0),
                      blurRadius: 10,
                      color: colorHitam.withOpacity(0.3))
                ],
                image: DecorationImage(
                  image: NetworkImage('assets/image/png/' + product.image),
                ),
              ),
            ),
          ),
          Positioned(
            left: 120,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: 136,
              width: MediaQuery.of(context).size.width - 120,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        product.title,
                        style:
                            textHitam.copyWith(fontSize: 16, fontWeight: bold),
                      ),
                      Text(product.subTitle),
                      Text('\$${product.price}',
                          style: textHitam.copyWith(
                              fontSize: 14, fontWeight: bold))
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
      ),
    );
  }
}
