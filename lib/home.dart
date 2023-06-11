import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_design2/constant_values.dart';
import 'package:interview_design2/reusable_widgets.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<String> carouselImg = [
    "images/c1.avif",
    "images/c2.avif",
    "images/c3.avif",
    "images/c4.avif"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Column(children: [
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
                            margin:
                                const EdgeInsets.symmetric(horizontal: 20.0),
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
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
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
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      height: 127,
                    )
                  ],
                ),
                Positioned.fill(
                  top: 89,
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
            const HeadlinesContainer(topic: "Hot Deals"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SameImages(
                  images: "images/h1.avif",
                  price: "Rs123",
                  strikePrice: "Rs160",
                  productName: "Men's Shoes",
                ),
                SameImages(
                  images: "images/h2.avif",
                  price: "Rs89",
                  strikePrice: "Rs102",
                  productName: "Women's Purse",
                ),
                SameImages(
                  images: "images/h3.avif",
                  price: "Rs250",
                  strikePrice: "Rs450",
                  productName: "Leather Bag",
                ),
              ],
            ),
            sizebox(),
            const HeadlinesContainer(topic: "Weekly Tops"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SameImages(
                    images: "images/w1.avif",
                    price: "Rs250",
                    strikePrice: "",
                    productName: "Watch"),
                SameImages(
                    images: "images/w2.avif",
                    price: "Rs600",
                    strikePrice: "",
                    productName: "T-Shirt"),
                SameImages(
                    images: "images/w3.avif",
                    price: "Rs2000",
                    strikePrice: "",
                    productName: "Speaker"),
              ],
            ),
            sizebox(),
            const HeadlinesContainer(
              topic: "Trendy",
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SameImages(
                  images: "images/t1.avif",
                  price: "Rs123",
                  strikePrice: "Rs160",
                  productName: "Tablet",
                ),
                SameImages(
                  images: "images/t2.avif",
                  price: "Rs89",
                  strikePrice: "Rs102",
                  productName: "Digital Camera",
                ),
                SameImages(
                  images: "images/t3.avif",
                  price: "Rs250",
                  strikePrice: "Rs450",
                  productName: "Colorful Masks",
                ),
              ],
            ),
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(viewAllColor),
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt_outlined,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(viewAllColor),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), label: "Favourites"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: "Profile"),
        // BottomNavigationBarItem(icon: Icon(Icons.ring_volume), label: "Alert"),
      ]),
    );
  }

  SizedBox sizebox() {
    return const SizedBox(
      height: 30.0,
    );
  }
}

