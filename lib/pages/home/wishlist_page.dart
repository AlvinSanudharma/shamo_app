import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';
import 'package:shamo_app/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: const Text('Favorite Shoes'),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 74,
            ),
            const SizedBox(
              height: 23,
            ),
            Text(
              "You don't have dream shoes?",
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Let's find your favorite shoes",
              style: secondaryTextStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 24),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                        fontSize: 12, fontWeight: medium),
                  ),
                ))
          ],
        ),
      ));
    }

    Widget content() {
      return Expanded(
          child: Container(
        color: backgroundColor3,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          children: [
            WishlistCard(),
            WishlistCard(),
            WishlistCard(),
          ],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        // emptyWishlist(),
        content(),
      ],
    );
  }
}
