import 'package:delicious_food/Models/Product.dart';
import 'package:delicious_food/size_config.dart';
import 'package:delicious_food/theme.dart';
import 'package:flutter/material.dart';

class ProductVer extends StatelessWidget {
  final Product product;
  final Function press;
  const ProductVer({
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
      child: Container(
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
                color: colorHitam.withOpacity(0.1),
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 10,
                            color: colorHitam.withOpacity(0.3))
                      ],
                      image: DecorationImage(
                        image:
                            NetworkImage('assets/image/png/' + product.image),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        product.title,
                        textAlign: TextAlign.center,
                        style:
                            textHitam.copyWith(fontSize: 14, fontWeight: bold),
                      ),
                      Text(product.subTitle,
                          style: textHitam.copyWith(fontSize: 10)),
                      Text('\$${product.price}',
                          textAlign: TextAlign.center,
                          style: textHitam.copyWith(
                              fontSize: 12, fontWeight: bold)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
