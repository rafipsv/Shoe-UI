import 'package:flutter/material.dart';
import 'package:shoe_ui/widgets/shoe_body.dart';
import 'package:shoe_ui/widgets/shoe_top.dart';

class ShoePage extends StatefulWidget {
  final String image;
  final int index;
  final String tag;
  const ShoePage(
      {super.key, required this.image, required this.index, required this.tag});

  @override
  State<ShoePage> createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              widget.image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            ShoeTop(
              index: widget.index,
            ),
            ShoeBody(
              index: widget.index,
            )
          ],
        ),
      ),
    );
  }
}
