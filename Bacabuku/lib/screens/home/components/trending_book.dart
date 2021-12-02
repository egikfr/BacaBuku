import 'package:bacabuku/models/book.dart';
import 'package:bacabuku/screens/home/pages/book_details.dart';
import 'package:flutter/material.dart';
import 'package:bacabuku/themes.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    Key? key,
    required this.info,
  }) : super(key: key);

  final BookList info;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, BookDetail.nameRoute, arguments: {
              'imageUrl': info.imageUrl,
              'writers': info.writers,
              'title': info.title,
            });
          },
          child: Hero(
            tag: info.imageUrl,
            child: Container(
              height: 160,
              width: 101,
              margin: EdgeInsets.only(
                top: 5,
                left: 30,
                right: 15,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(
                  image: AssetImage(info.imageUrl),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(
                info.writers,
                style: mediumText12.copyWith(color: greyColor),
              ),
              Text(
                info.title,
                style: semiBoldText14.copyWith(color: greyColorRecentBook),
              ),
              Text(
                info.sinopsishome,
                style: semiBoldText12.copyWith(color: greyColorRecentBook),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
