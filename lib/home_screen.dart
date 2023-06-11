import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_design2/constant_values.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> carouselImg = [
    "images/c1.avif",
    "images/c2.avif",
    "images/c3.avif",
    "images/c4.avif"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 175.0,
                  color: const Color(appBarBgColor),
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: const Row(children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 11.0,
                          ),
                          Text(
                            "iMac",
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w300),
                          ),
                        ]),
                      ),
                    ),
                    Container(
                        height: 36,
                        width: 36,
                        margin: const EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                            color: const Color(cartImgColor),
                            borderRadius: BorderRadius.circular(36)),
                        child: Image.asset(
                          "images/cart.png",
                          color: Colors.white,
                        ))
                  ]),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 227.0,
                  width: double.infinity,
                )
              ],
            ),
            Positioned.fill(
              top: 89,
              bottom: 76,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CarouselSlider(
                    items: carouselImg
                        .map((e) => ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                e,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      height: 140,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(milliseconds: 1500),
                      viewportFraction: 1,
                    )),
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot Deals",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                    color: const Color(0xff283148)),
              ),
              Text(
                "View all",
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Color(viewAllColor)),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 140,
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "images/c1.avif",
                          height: 105,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Rs123",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(viewAllColor)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Rs120",
                            style: TextStyle(
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
                      const Text(
                        "Men's Shoes",
                        style: TextStyle(
                            color: Color(0xff283148),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
              Container(
                width: 140,
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "images/c1.avif",
                          height: 105,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Rs123",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(viewAllColor)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Rs120",
                            style: TextStyle(
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
                      const Text(
                        "Men's Shoes",
                        style: TextStyle(
                            color: Color(0xff283148),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
              Container(
                width: 140,
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "images/c1.avif",
                          height: 105,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Rs123",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(viewAllColor)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Rs120",
                            style: TextStyle(
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
                      const Text(
                        "Men's Shoes",
                        style: TextStyle(
                            color: Color(0xff283148),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
