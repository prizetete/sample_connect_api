import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_connect_api/constant.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRoutes.listViewComponent.name);
              },
              child: Text('ListView'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRoutes.pageViewComponent.name);
              },
              child: Text('PageView'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRoutes.gridViewComponent.name);
              },
              child: Text('GridView'),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
