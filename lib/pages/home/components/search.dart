import 'package:movie/shared/components/svg_asset.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SearchBar(
        backgroundColor:
            WidgetStateProperty.all(const Color.fromARGB(255, 232, 232, 232)),
        shadowColor:
            WidgetStateProperty.all(const Color.fromARGB(255, 216, 216, 216)),
        padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 20.0)),
        leading: const SvgAsset(assetPath: 'assets/icons/Search.svg'),
        hintText: "Search for a movie",
        trailing: const <Widget>[
          Tooltip(
            message: "Filter",
            child: SvgAsset(assetPath: 'assets/icons/Filter.svg'),
          )
        ],
      ),
    );
  }
}
