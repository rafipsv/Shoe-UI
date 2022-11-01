import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  final List categories = [
    "All",
    "Sneakers",
    "Football",
    "Cricket",
    "Soccer",
    "Golf",
    "Badminton"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: List.generate(
            categories.length,
            (index) => GestureDetector(
              onTap: (() {
                setState(() {
                  selectedIndex = index;
                });
              }),
              child: Container(
                padding: selectedIndex == index
                    ? const EdgeInsets.only(
                        top: 12,
                        bottom: 12,
                        right: 30,
                        left: 30,
                      )
                    : const EdgeInsets.only(
                        top: 12,
                        bottom: 12,
                        right: 10,
                        left: 10,
                      ),
                margin: selectedIndex == index
                    ? const EdgeInsets.only(
                        right: 8,
                        left: 8,
                      )
                    : const EdgeInsets.only(
                        right: 6,
                        left: 6,
                      ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:
                      selectedIndex == index ? Colors.grey[200] : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: selectedIndex == index
                        ? Colors.grey[900]
                        : Colors.grey[700],
                    fontSize: selectedIndex == index ? 15.5 : 14,
                    fontWeight: selectedIndex == index
                        ? FontWeight.w600
                        : FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
