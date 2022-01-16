import 'package:delicious_food/DetailPage.dart';
import 'package:delicious_food/Models/Product.dart';
import 'package:delicious_food/Widgets/BottomNavBar.dart';
import 'package:delicious_food/Widgets/Product_Ver.dart';
import 'package:delicious_food/Widgets/Product_hor.dart';
import 'package:delicious_food/size_config.dart';
import 'package:delicious_food/theme.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: colorHitam,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search_outlined,
            color: colorHitam,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  List<Map<String, String>> type = [
    {"text": "Salads", "status": "active"},
    {"text": "Soups", "status": "nonactive"},
    {"text": "Grilled", "status": "nonactive"},
  ];

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
        appBar: buildAppBar(),
        bottomNavigationBar: BottomNavBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delicious Food',
                      style:
                          textHitam.copyWith(fontSize: 18, fontWeight: bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'We made fresh and healthy food',
                    style: textHitam.copyWith(fontSize: 14, fontWeight: light),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    type.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: type[index]['status'] == "active"
                            ? colorHitam
                            : colorHitam.withOpacity(0.1),
                      ),
                      child: Text(
                        type[index]['text'],
                        style: type[index]['status'] == "active"
                            ? textPutih.copyWith(fontSize: 12)
                            : textHitam.copyWith(fontSize: 12),
                      ),
                    ),
                  ),
                  Icon(Icons.tune_outlined)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        product.length,
                        (index) => Container(
                            width: SizeConfig.screenWidth,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: ProductHor(
                                  product: product[index],
                                  press: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailPage(
                                                product: product[index])));
                                  }),
                            )))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: defaultSize * 30,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: product.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          crossAxisCount: 2,
                          childAspectRatio: 0.693,
                        ),
                        itemBuilder: (context, index) => ProductVer(
                              product: product[index],
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                      product: product[index],
                                    ),
                                  ),
                                );
                              },
                            ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
