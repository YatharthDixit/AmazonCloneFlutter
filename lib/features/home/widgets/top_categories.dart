import 'package:amazon/constants/global_variable.dart';
import 'package:amazon/features/home/screens/category_deals_screen.dart';
import 'package:flutter/material.dart';

class TopCatogories extends StatefulWidget {
  const TopCatogories({super.key});

  @override
  State<TopCatogories> createState() => _TopCatogoriesState();
}

class _TopCatogoriesState extends State<TopCatogories> {
  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoriesDealScreen.routeName,
        arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: GlobalVariables.categoryImages.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 75,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              navigateToCategoryPage(
                  context, GlobalVariables.categoryImages[index]['title']!);
            },
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      GlobalVariables.categoryImages[index]['image']!,
                      fit: BoxFit.cover,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
                Text(
                  GlobalVariables.categoryImages[index]['title']!,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
