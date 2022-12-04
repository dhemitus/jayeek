import 'package:flutter/material.dart';

class ImageUtilities {
  static DecorationImage imageAsset(String image, {BoxFit? fit}) {
    return DecorationImage(fit: fit ?? BoxFit.cover, image: AssetImage(image));
  }
}
