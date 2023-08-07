import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DishImage extends StatelessWidget {
  final double width;
  final double height;
  final String imageURL;
  final Alignment alignment;
  const DishImage({
    required this.imageURL,
    required this.width,
    required this.height,
    required this.alignment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.radius15),
      child: CachedNetworkImage(
        width: width,
        height: height,
        alignment: alignment,
        imageUrl: imageURL,
      ),
    );
  }
}
