import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImageWidget extends StatelessWidget {
  final String? path;
  final String? url;
  final Uint8List? bytes;
  final double? imageHeight;
  final double? imageWidth;
  final BoxDecoration? boxDecoration;
  final Color? imageTint;
  final BoxFit? imageFit;
  final Widget? placeholder;

  const AppImageWidget({
    this.bytes,
    this.path,
    this.url,
    this.imageWidth,
    this.imageHeight,
    this.imageTint,
    this.imageFit,
    super.key,
    this.placeholder,
    this.boxDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return bytes != null && bytes!.isNotEmpty
        ? Image.memory(
            bytes!,
            height: imageHeight,
            width: imageWidth,
            fit: imageFit,
            color: imageTint,
          )
        : path != null && path != ''
            ? _isSvgPicture()
                ? SvgPicture.asset(
                    path!,
                    fit: imageFit ?? BoxFit.cover,
                    width: imageWidth,
                    height: imageHeight,
                  )
                : Image.asset(
                    path!,
                    height: imageHeight,
                    width: imageWidth,
                    fit: imageFit,
                    color: imageTint,
                  )
            : (url?.isNotEmpty == true)
                ? Image.network(
                    url!,
                    height: imageHeight,
                    width: imageWidth,
                    fit: imageFit,
                    loadingBuilder: ((_, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return _getPlaceHolder();
                    }),
                    errorBuilder: (_, __, ___) {
                      return placeholder ?? _getPlaceHolder();
                    },
                  )
                : _getPlaceHolder();
  }

  Widget _getPlaceHolder() => Image.asset(
        '',
        width: imageWidth,
        height: imageHeight,
        fit: BoxFit.cover,
      );

  bool _isSvgPicture() => path?.endsWith(".svg") == true;
}
