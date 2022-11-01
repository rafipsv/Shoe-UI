import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FootSizes extends StatefulWidget {
  const FootSizes({
    super.key,
  });

  @override
  State<FootSizes> createState() => _FootSizesState();
}

class _FootSizesState extends State<FootSizes> {
  final List feetSize = [40, 42, 44, 46];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: FadeInDown(
        child: Row(
          children: List.generate(feetSize.length, (index) {
            return GestureDetector(
              onTap: (() {
                setState(() {
                  selectedIndex = index;
                });
              }),
              child: Container(
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 80),
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: selectedIndex == index ? Colors.black : null,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  feetSize[index].toString(),
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
