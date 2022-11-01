import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoe_ui/helpers/helper.dart';
import 'package:shoe_ui/widgets/categories.dart';
import 'package:shoe_ui/widgets/intro.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Helper.homeAppBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.035,
            ),
            FadeInDown(child: const Categories()),
            SizedBox(
              height: size.height * 0.03,
            ),
            FadeInLeftBig(
              child: const IntroCart(
                image: "assets/images/one.jpg",
                heroTag: "red",
                price: "120",
                index: 1,
              ),
            ),
            FadeInRightBig(
              child: const IntroCart(
                image: "assets/images/two.jpg",
                heroTag: "blue",
                price: "100",
                index: 2,
              ),
            ),
            FadeInLeftBig(
              child: const IntroCart(
                image: "assets/images/three.jpg",
                heroTag: "white",
                price: "129",
                index: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
