import 'package:movie/models/popular_model.dart';
import 'package:movie/shared/components/custom_title.dart';
import 'package:movie/shared/components/svg_asset.dart';
import 'package:flutter/material.dart';

class PopularSection extends StatelessWidget {
  final List<PopularModel> popularDiets;

  const PopularSection({
    required this.popularDiets,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 250,
        child: Column(
          children: [
            // title
            const CustomTitle(title: "Popaular"),

            const SizedBox(height: 10),

            // list
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 20);
                },
                itemCount: popularDiets.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            "you've clicked on ${popularDiets[index].name}"),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () {},
                        ),
                      ),
                    ),
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: popularDiets[index].isViewSelected
                              ? [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3))
                                ]
                              : [],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // icon
                              SvgAsset(
                                assetPath: popularDiets[index].assetPath,
                                width: 50,
                                height: 50,
                              ),

                              // category name
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    popularDiets[index].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                      "${popularDiets[index].genre} | ${popularDiets[index].duration} | ${popularDiets[index].year}"),
                                ],
                              ),

                              // icon
                              const RotatedBox(
                                quarterTurns: 90,
                                child: SvgAsset(
                                  assetPath: 'assets/icons/Arrow - Left 2.svg',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
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
