import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoe_ui/pages/homepage.dart';

class ShoeTop extends StatefulWidget {
  final int index;
  const ShoeTop({super.key, required this.index});

  @override
  State<ShoeTop> createState() => _ShoeTopState();
}

class _ShoeTopState extends State<ShoeTop> {
  bool isLove = false;
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    if (widget.index == 3) {
      color = Colors.white;
    }
    return FadeInDown(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: IconButton(
                  onPressed: (() {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const HomePage()),
                      ),
                      (route) => false,
                    );
                  }),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: widget.index == 3 ? Colors.black : Colors.white,
                    size: 30,
                  )),
            ),
            GestureDetector(
              onTap: (() {
                setState(() {
                  isLove = !isLove;
                });
              }),
              child: Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: widget.index == 3 ? Colors.black : Colors.white,
                  shape: BoxShape.circle,
                ),
                margin: const EdgeInsets.only(right: 25, top: 30),
                child: Icon(
                  isLove ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isLove ? Colors.red : color,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
