import 'package:flutter/material.dart';
import 'package:assignment/common/custom_text.dart';

class GrideList extends StatefulWidget {
  const GrideList({super.key});

  @override
  State<GrideList> createState() => _GrideListState();
}

class _GrideListState extends State<GrideList> {
  List<Map<String, dynamic>> gridData = [
    {
      'title': '  Frash Fruits &  Vegetable',
      'image': 'assets/grid_1.png',
      'bgColor': Colors.blue.shade50,
      'borderColor': Colors.blue.shade100,
    },
    {
      'title': 'Cooking Oil & Ghee',
      'image': 'assets/grid_2.png',
      'bgColor': Colors.orange.shade50,
      'borderColor': Colors.orange.shade100,
    },
    {
      'title': 'Meat & Fish',
      'image': 'assets/grid_3.png',
      'bgColor': Colors.purple.shade50,
      'borderColor': Colors.purple.shade100,
    },
    {
      'title': 'Bakery & Snacks',
      'image': 'assets/grid_2.png',
      'bgColor': Colors.pink.shade50,
      'borderColor': Colors.pink.shade100,
    },
    {
      'title': 'Dairy & Eggs',
      'image': 'assets/grid_5.png',
      'bgColor': Colors.green.shade50,
      'borderColor': Colors.green.shade100,
    },
    {
      'title': 'Beverages',
      'image': 'assets/grid_6.png',
      'bgColor': Colors.orange.shade50,
      'borderColor': Colors.orange.shade100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 2 / 3,
      ),
      itemCount: gridData.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: gridData[index]['bgColor'], // Background color
            borderRadius: BorderRadius.circular(10), // Rounded corners
            border: Border.all(
              color: gridData[index]['borderColor'],
            ), // Border color and width
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                gridData[index]['image'],
                height: 100, // Adjust the image size as needed
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                gridData[index]['title'],
                style: TextStyle(
                  color: Colors.black, // Text color
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
