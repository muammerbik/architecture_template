import 'package:architecture_template/products/utility/enums/custom_mem_cache.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

///Custom Network Image Widget
final class CustomNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final Widget? emptyWidget;
  final CustomMemCache customMemCache;
  final BoxFit? boxFit;
  final Size? size;
  final Widget? loadingWidget;
 const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.customMemCache = const CustomMemCache(height: 200, weight: 200),
    this.boxFit = BoxFit.cover,
    this.size,
    this.loadingWidget,
  });

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isNotEmpty) return emptyWidget ?? const SizedBox();
    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: customMemCache.height,
      memCacheWidth: customMemCache.weight,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      progressIndicatorBuilder: (context, url, progress) {
        return loadingWidget ??
            const Center(
              child: CircularProgressIndicator(),
            );
      },
      errorListener: (value) {
        debugPrint('Network image error');
      },
    );
  }
}
