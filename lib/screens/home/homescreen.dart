// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/model/product_model.dart';
import 'package:online_shop_app/screens/home/components/productSection/detail_screen.dart';

import 'components/banner.dart';
import 'components/bar_section.dart';
import 'components/productSection/product_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            BarSection(),
            SizedBox(
              height: 25,
            ),
            // PointSection(),
            // SizedBox(
            //   height: 25,
            // ),
            BannerSection(),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Goods",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                    // we are using gridview inside listview thats why we have to use shrinkwrap and add physical scroll
                    // it  is not scrolling
                    //now add physical scroll to make it move able
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: furProducts.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ProductSection(
                          product: furProducts[index],
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                        product: furProducts[index])));
                          },
                        ))
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      )),
    );
  }
}
