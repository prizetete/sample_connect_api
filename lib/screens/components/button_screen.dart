import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
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
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'TextButton',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                'ElevatedButton',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.green,
              style: IconButton.styleFrom(backgroundColor: Colors.yellow),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Text('Align Axis Start'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: floatingbtn(),
                ),
                SizedBox(height: 10),

                Text('Align Axis End'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: floatingbtn(),
                ),
                SizedBox(height: 10),

                Text('Align Axis center'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: floatingbtn(),
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> floatingbtn() {
    List<Widget> list = [
      FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
      const SizedBox(width: 10),
      FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      const SizedBox(width: 10),
      FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    ];
    return list;
  }
}
