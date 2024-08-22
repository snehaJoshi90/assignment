import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  PageController _pageController = PageController();
  int? currentPage = 0;

  List<Map<String, dynamic>> bannerData = [
    {
      'image': 'assets/banner.png',
    },
    {
      'image': 'assets/banner.png',
    },
    {
      'image': 'assets/banner.png',
    },
  ];

  @override
  void initState() {
    currentPage = 0;
    _pageController = PageController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Stack(children: [
          PageView.builder(
            controller: _pageController,
            itemCount: bannerData.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 5, right: 5),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(bannerData[index]['image']),
                ),
              );
            },
          ),

          // const SizedBox(height: 10),
          Positioned(
            bottom: 30,
            child: PageViewDotIndicator(
                currentItem: currentPage ?? 0,
                count: bannerData.length,
                unselectedColor: Colors.grey,
                selectedColor: Colors.lightGreen,
                size: const Size(25, 5),
                // Size of the selected dot
                unselectedSize: const Size(5, 5),
                // Size of the unselected dots
                duration: const Duration(milliseconds: 200),
                // Size of the unselected dots
                margin: const EdgeInsets.symmetric(horizontal: 3),
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
                fadeEdges: false,
                boxShape: BoxShape.rectangle,
                //defaults to circle
                borderRadius: BorderRadius.circular(5),
                onItemClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                  );
                }),
          ),
        ]))
      ],
    );
  }
}
