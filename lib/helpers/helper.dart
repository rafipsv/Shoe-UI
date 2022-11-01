import 'package:flutter/material.dart';

class Helper {
  static final homeAppBar = AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    centerTitle: false,
    title: const Padding(
      padding: EdgeInsets.only(top: 15, left: 3),
      child: Text(
        "Shoes",
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            letterSpacing: 0.5),
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(top: 15, right: 30),
        child: Icon(
          Icons.notifications_active_outlined,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 15, right: 15),
        child: Icon(
          Icons.shopping_cart,
          color: Colors.black,
        ),
      ),
    ],
  );
  Widget buttonForWhite(context) {
    return Container(
      margin: const EdgeInsets.only(right: 30, left: 30, bottom: 40),
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Buy Now",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget buttonForColor(context) {
    return Container(
      margin: const EdgeInsets.only(right: 30, left: 30, bottom: 40),
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Buy Now",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
