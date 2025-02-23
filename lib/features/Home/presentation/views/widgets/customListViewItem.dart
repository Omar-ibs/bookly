import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: AspectRatio(
        aspectRatio: 2.4 / 4,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )
        ),
      ),
    );
  }
}
