import 'package:delicious_food/theme.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Container(
          height: 50,
          color: colorHitam,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {},
                color: colorPutih,
              ),
              IconButton(
                  icon: Icon(Icons.wallet_membership_outlined),
                  color: colorPutih,
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.chat_outlined),
                  color: colorPutih,
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.person_outline),
                  color: colorPutih,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );

    // return ClipRRect(
    //   borderRadius: BorderRadius.vertical(
    //     top: Radius.circular(30),
    //     bottom: Radius.circular(30),
    //   ),
    //   child: BottomAppBar(
    //     child: BottomNavigationBar(
    //         backgroundColor: colorHitam,
    //         currentIndex: currentIndex,
    //         selectedItemColor: colorPutih,
    //         type: BottomNavigationBarType.fixed,
    //         onTap: (value) {
    //           // pageProvider.currentIndex = value;
    //           print(value);
    //         },
    //         items: [
    //           BottomNavigationBarItem(
    //               icon: Icon(Icons.home_outlined), label: ''),
    //           BottomNavigationBarItem(
    //               icon: Icon(Icons.wallet_membership_outlined), label: ''),
    //           BottomNavigationBarItem(
    //               icon: Icon(Icons.chat_outlined), label: ''),
    //           BottomNavigationBarItem(
    //               icon: Icon(Icons.person_outline), label: ''),
    //         ]),
    //   ),
    // );
  }
}
