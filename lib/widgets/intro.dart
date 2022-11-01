import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shoe_ui/pages/shoe.dart';

class IntroCart extends StatefulWidget {
  final String image;
  final String heroTag;
  final String price;
  final int index;
  const IntroCart(
      {super.key,
      required this.image,
      required this.heroTag,
      required this.price,
      required this.index});

  @override
  State<IntroCart> createState() => _IntroCartState();
}

class _IntroCartState extends State<IntroCart> {
  bool isLove = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => ShoePage(
                  image: widget.image,
                  index: widget.index,
                  tag: widget.heroTag,
                )),
          ),
        );
      }),
      child: Container(
        height: size.height * 0.35,
        width: size.width,
        margin: const EdgeInsets.only(
          left: 35,
          right: 35,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                widget.image,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(0, 10),
              color: Color.fromARGB(255, 206, 204, 204),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInDown(
              delay: const Duration(milliseconds: 1200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 17),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          speed: const Duration(milliseconds: 100),
                          "Sneakers",
                          textStyle: TextStyle(
                            color: widget.index == 3
                                ? Colors.black
                                : Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            shadows: const [
                              Shadow(
                                blurRadius: 3.0,
                                color: Colors.white,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (() {
                      setState(() {
                        isLove = !isLove;
                      });
                    }),
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      margin: const EdgeInsets.only(right: 20, top: 20),
                      child: Icon(
                        isLove
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: isLove ? Colors.red : Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 1500),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 17),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FlickerAnimatedText(
                      "Nike",
                      textStyle: TextStyle(
                        color:
                            widget.index == 3 ? Colors.black : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        shadows: const [
                          Shadow(
                            blurRadius: 7.0,
                            color: Colors.white,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: FadeInDown(
                delay: const Duration(milliseconds: 1800),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 17),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            speed: const Duration(milliseconds: 100),
                            "\$${widget.price}",
                            textStyle: TextStyle(
                              color: widget.index == 3
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              shadows: const [
                                Shadow(
                                  blurRadius: 3.0,
                                  color: Colors.white,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
