import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  final String url;

  const ImageAsset({required this.url, Key? key})
      : assert(url != ''),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image:
                DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
      ),
    );
  }
}
