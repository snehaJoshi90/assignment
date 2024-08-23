import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  PageController _pageController = PageController();
  int? currentPage = 0;

  List<Map<String, dynamic>> bannerData = [
    {
      'image': 'assets/apple.png',
    },
    {
      'image': 'assets/apple.png',
    },
    {
      'image': 'assets/apple.png',
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
                  return   Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0)),
                      // border: Border.symmetric(),
                      // borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF2F3F2),
                    ),
                      child: Image.asset(bannerData[index]['image']),
                    );

                },
              ),

              // const SizedBox(height: 10),
              Positioned(
                bottom: 10,
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
