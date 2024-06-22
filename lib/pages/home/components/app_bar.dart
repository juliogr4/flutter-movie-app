import 'package:movie/shared/components/svg_asset.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 0,
        toolbarOpacity: .7,
        centerTitle: true,
        title: const Text(
          "movie",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leadingWidth: 30,
        leading: const SvgAsset(assetPath: 'assets/icons/Arrow - Left 2.svg'),
        actions: const [
          SvgAsset(
            assetPath: 'assets/icons/dots.svg',
            width: 8,
            height: 8,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
