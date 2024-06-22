import 'package:movie/models/category_model.dart';
import 'package:movie/shared/components/custom_title.dart';
import 'package:movie/shared/components/svg_asset.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategorySection({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            const CustomTitle(title: "Genre"),

            const SizedBox(height: 10),

            // list
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text("you've clicked on ${categories[index].name}"),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () {},
                        ),
                      ),
                    ),
                    child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: categories[index].color,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // icon
                            SvgAsset(
                              assetPath: categories[index].assetPath,
                              width: 35,
                              height: 35,
                            ),

                            // category name
                            Text(
                              categories[index].name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
