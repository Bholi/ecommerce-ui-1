import 'package:flutter/material.dart';

import 'constant_values.dart';


class HeadlinesContainer extends StatelessWidget {
  final String topic;
  const HeadlinesContainer({
    required this.topic,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopicText(title: topic),
          const ViewallText(),
        ],
      ),
    );
  }
}

class TopicText extends StatelessWidget {
  final String title;

  const TopicText({required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
          color: Color(0xff283148)),
    );
  }
}


class ViewallText extends StatelessWidget {
  
  const ViewallText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "View all",
      style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          color: Color(viewAllColor)),
    );
  }
}


class SameImages extends StatelessWidget {
  final String images;
  final String price;
  final String strikePrice;
  final String productName;
  const SameImages({required this.images,required this.price,required this.strikePrice,required this.productName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(left: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            images,
            height: 105,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
         Row(
          children: [
            Text(
              price,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(viewAllColor)),
            ),
            const SizedBox(
              width: 5,
            ),
             Text(
              strikePrice,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff141414),
                  decoration: TextDecoration.lineThrough),
            )
          ],
        ),
        const SizedBox(
          height: 2,
        ),
         Text(
          productName,
          style: const TextStyle(
              color: Color(0xff283148),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        )
      ]),
    );
  }
}

