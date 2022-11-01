import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shoe_ui/helpers/helper.dart';
import 'package:shoe_ui/widgets/foot_size.dart';
import 'package:shoe_ui/widgets/foot_size2.dart';

class ShoeBody extends StatefulWidget {
  final int index;
  const ShoeBody({super.key, required this.index});

  @override
  State<ShoeBody> createState() => _ShoeBodyState();
}

class _ShoeBodyState extends State<ShoeBody> {
  Helper helper = Helper();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 30),
            child: FadeInDown(
              child: Row(
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FlickerAnimatedText(
                        "Sneakers",
                        textStyle: TextStyle(
                          color:
                              widget.index == 3 ? Colors.black : Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: widget.index == 3 ? 3.0 : 7.0,
                              color: widget.index == 3
                                  ? Colors.black
                                  : Colors.white,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 30),
            child: FadeInDown(
              child: Row(
                children: [
                  Text(
                    "Size",
                    style: TextStyle(
                      fontSize: 35,
                      color: widget.index == 3 ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w600,
                      shadows: [
                        Shadow(
                          blurRadius: widget.index == 3 ? 3.0 : 7.0,
                          color:
                              widget.index == 3 ? Colors.black : Colors.white,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          widget.index == 3 ? const FootSizes() : const FootSize2(),
          widget.index == 3
              ? FadeInDown(child: helper.buttonForWhite(context))
              : FadeInDown(child: helper.buttonForColor(context)),
        ],
      ),
    );
  }
}
