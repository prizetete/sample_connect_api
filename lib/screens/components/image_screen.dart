import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_connect_api/constant.dart';
import 'package:sample_connect_api/freezed/models/image/image.dart' as img;

/// โหมดการจัดรูปภาพภายในกล่อง
enum ImageBoxFit {
  cover, // ครอบคลุมทั้งกล่อง (BoxFit.cover)
  contain, // ภาพทั้งภาพอยู่ในกล่อง (BoxFit.contain)
  fill, // ยืดเต็มกล่อง (BoxFit.fill)
  fitWidth, // เต็มความกว้าง ปรับสูงตามอัตราส่วน (BoxFit.fitWidth)
  fitHeight, // เต็มความสูง ปรับกว้างตามอัตราส่วน (BoxFit.fitHeight)
  none, // ไม่ปรับขนาด (BoxFit.none)
}

class ImageRouteScreen extends StatelessWidget {
  const ImageRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Route Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            btnImage(
              context,
              'ภาพทั้งภาพอยู่ในกล่อง (BoxFit.contain)',
              'Image contain',
              ImageBoxFit.contain,
            ),
            btnImage(
              context,
              'ครอบคลุมทั้งกล่อง (BoxFit.cover)',
              'Image cover',
              ImageBoxFit.cover,
            ),
            btnImage(
              context,
              'ยืดเต็มกล่อง (BoxFit.fill)',
              'Image fill',
              ImageBoxFit.fill,
            ),
            btnImage(
              context,
              'เต็มความกว้าง ปรับสูงตามอัตราส่วน (BoxFit.fitWidth)',
              'Image fitWidth',
              ImageBoxFit.fitWidth,
            ),
            btnImage(
              context,
              'เต็มความสูง ปรับกว้างตามอัตราส่วน (BoxFit.fitHeight)',
              'Image fitHeight',
              ImageBoxFit.fitHeight,
            ),
            btnImage(
              context,
              'ไม่ปรับขนาด (BoxFit.none)',
              'Image none',
              ImageBoxFit.none,
            ),
          ],
        ),
      ),
    );
  }

  Widget btnImage(
    BuildContext context,
    String title,
    String btnTitle,
    ImageBoxFit boxFit,
  ) {
    return Column(
      children: [
        Text(title),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            context.pushNamed(
              AppRoutes.imageComponent.name,
              extra: img.Image(
                imageUrl:
                    'https://img.lovepik.com/element/40129/4819.png_1200.png',
                width: double.infinity,
                height: double.infinity,
                boxFit: boxFit,
                borderRadius: 8.0,
                borderWidth: 1.0,
              ),
            );
          },
          child: Text(btnTitle),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

enum ImageScreenAttr {
  imageUrl,
  width, // ความกว้างของกล่อง
  height, // ความสูงของกล่อง
  boxFit, // วิธีการจัดรูปภาพภายในกล่อง
  borderRadius, // มุมโค้งของกล่อง
  border, // ขอบของกล่อง
}

/// Widget แสดงรูปในกล่อง fixed ขนาด
class ImageScreen extends StatelessWidget {
  final img.Image image;

  const ImageScreen({super.key, required this.image});

  BoxFit _toBoxFit(ImageBoxFit f) {
    switch (f) {
      case ImageBoxFit.contain:
        return BoxFit.contain;
      case ImageBoxFit.fill:
        return BoxFit.fill;
      case ImageBoxFit.fitWidth:
        return BoxFit.fitWidth;
      case ImageBoxFit.fitHeight:
        return BoxFit.fitHeight;
      case ImageBoxFit.none:
        return BoxFit.none;
      case ImageBoxFit.cover:
        return BoxFit.cover;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Center(
        child: Container(
          width: image.width,
          height: image.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(image.borderRadius),
            border: Border.all(color: Colors.black, width: image.borderWidth),
            color: Colors.grey[200],
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.network(
            image.imageUrl,
            fit: _toBoxFit(image.boxFit),
            width: image.width,
            height: image.height,
          ),
        ),
      ),
    );
  }
}
