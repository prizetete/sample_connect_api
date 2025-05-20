import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_connect_api/screens/components/Lists/grid_screen.dart';
import 'package:sample_connect_api/screens/components/Lists/list_view_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// Flutter code sample for [PageView].

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PageView Screen'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: const PageViewExample(),
      ),
    );
  }
}

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample>
    with TickerProviderStateMixin {
  late PageController _pageViewController;

  List<Widget> pages = [
    const GridScreen(isShowAppbar: false),
    ListViewScreen(isShowAppbar: false),
  ];

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              PageView(
                controller: _pageViewController,
                children: <Widget>[...pages],
              ),
            ],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageViewController,
                  count: pages.length,
                  effect: const WormEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    type: WormType.thinUnderground,
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageViewController,
                  count: pages.length,
                  effect: JumpingDotEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    jumpScale: .7,
                    verticalOffset: 15,
                  ),
                ),
                SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: _pageViewController,
                  count: pages.length,
                  effect: ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 12,
                    dotWidth: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
