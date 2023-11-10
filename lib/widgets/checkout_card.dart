import 'package:flutter/material.dart';
import 'package:shamo_app/models/cart_model.dart';
import 'package:shamo_app/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key, this.cart});

  final CartModel? cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(
                        'http://10.0.2.2:8000${cart?.product.galleries[0].url}'))),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart?.product.name ?? '',
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${cart?.product.price ?? '0'}',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            '${cart?.quantity ?? '0'} Items',
            style: secondaryTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
