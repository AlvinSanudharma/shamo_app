import 'package:flutter/material.dart';
import 'package:shamo_app/models/category_model.dart';
import 'package:shamo_app/models/gallery_model.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/pages/detail_chat_page.dart';
import 'package:shamo_app/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailChatPage(
                    product: UninitializedProductModel(
                        id: 0,
                        category: CategoryModel(id: 0, name: ''),
                        name: '',
                        description: '',
                        galleries: [
                          GalleryModel(id: 0, url: ''),
                        ],
                        price: 0,
                        createdAt: DateTime.now(),
                        updatedAt: DateTime.now()))));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Good night, This item is on...',
                        style: secondaryTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(fontSize: 10),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            )
          ],
        ),
      ),
    );
  }
}
