import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/providers/wishlist_provider.dart';
import 'package:shamo_app/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: backgroundColor4),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'http://10.0.2.2:8000${product.galleries[0].url}',
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${product.price}',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/button_wishlist_blue.png',
              width: 34,
            ),
          )
        ],
      ),
    );
  }
}
