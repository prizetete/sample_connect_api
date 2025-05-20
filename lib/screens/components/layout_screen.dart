import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      // body: Container(
      //   height: 200, // กำหนดความสูงของ Container
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: Image.network(
      //           'https://picsum.photos/200/300', // ใส่ URL หรือ Asset ของคุณ
      //           fit: BoxFit.cover, // ปรับขนาดให้เต็มพื้นที่
      //           height: 100, // กำหนดความสูงตามต้องการ
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('data'),
                SizedBox(width: 10),
                Text('data'),
                SizedBox(width: 10),
                Text('data'),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Image(image: NetworkImage('https://picsum.photos/200/300')),
                Text(
                  'This is a stack',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
