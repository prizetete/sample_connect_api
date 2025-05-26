import 'package:flutter/material.dart';

class InteractiveViewerScreen extends StatelessWidget {
  const InteractiveViewerScreen({super.key});

  final String imageUrl =
      'https://img.lovepik.com/element/40129/4819.png_1200.png';

  @override
  Widget build(BuildContext context) {
    final TransformationController transformationController =
        TransformationController();
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Full-Width InteractiveViewer')),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onDoubleTap: () {
                  transformationController.value = Matrix4.identity();
                },
                child: InteractiveViewer(
                  transformationController: transformationController,
                  minScale: 0.5,
                  maxScale: 3.0,
                  panEnabled: true, // เปิดปิดการเลื่อน
                  scaleEnabled: true, // เปิดปิดการซูม
                  child: Image.network(
                    imageUrl,
                    width: screenWidth, // กำหนดให้กว้างเต็มหน้าจอ
                    fit: BoxFit.fitWidth, // ปรับความสูงตามอัตราส่วนภาพ
                  ),
                ),
              ),
              Text('Can Double Tap to Reset Zoom'),
              Text('Can Pan and Zoom'),
            ],
          ),
        ),
      ),
    );
  }
}
