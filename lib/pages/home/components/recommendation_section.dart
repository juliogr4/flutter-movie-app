import 'package:movie/models/recommendation_model.dart';
import 'package:movie/shared/components/custom_title.dart';
import 'package:movie/shared/components/svg_asset.dart';
import 'package:flutter/material.dart';

class DietSection extends StatelessWidget {
  final List<RecommendationModel> diets;

  const DietSection({
    super.key,
    required this.diets,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 270,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            const CustomTitle(title: "Movies Recommendation"),

            const SizedBox(height: 10),

            // list
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                itemCount: diets.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("you've clicked on ${diets[index].name}"),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () {},
                        ),
                      ),
                    ),
                    child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: diets[index].color,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // icon
                            SvgAsset(
                              assetPath: diets[index].assetPath,
                              width: 80,
                              height: 80,
                            ),

                            // category name
                            Text(
                              diets[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),

                            // description
                            Text(
                              "${diets[index].genre} | ${diets[index].duration} | ${diets[index].year}",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),

                            // button
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: diets[index].isViewSelected
                                    ? const Color.fromARGB(255, 55, 32, 207)
                                    : const Color.fromARGB(0, 116, 157, 130),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "View",
                                style: TextStyle(color: Colors.white),
                              ),
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
